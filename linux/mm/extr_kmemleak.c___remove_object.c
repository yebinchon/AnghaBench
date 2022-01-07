
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int object_list; int rb_node; } ;


 int list_del_rcu (int *) ;
 int object_tree_root ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void __remove_object(struct kmemleak_object *object)
{
 rb_erase(&object->rb_node, &object_tree_root);
 list_del_rcu(&object->object_list);
}
