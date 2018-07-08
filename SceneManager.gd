extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var currentScene
var player

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func load_scene(scene):	
	player.is_paused = true
	print("player paused")
	var instance = scene.instance()
	var world = get_node("/root/World")
	#world.get_tree().paused = true
	world.add_child(instance)
	currentScene = instance
	return instance
	
func unload_scene():
	var world = get_node("/root/World")
	world.remove_child(currentScene)
	player.is_paused = false

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass