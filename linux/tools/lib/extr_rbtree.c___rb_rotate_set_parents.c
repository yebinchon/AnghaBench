
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int __rb_parent_color; } ;


 int __rb_change_child (struct rb_node*,struct rb_node*,struct rb_node*,struct rb_root*) ;
 struct rb_node* rb_parent (struct rb_node*) ;
 int rb_set_parent_color (struct rb_node*,struct rb_node*,int) ;

__attribute__((used)) static inline void
__rb_rotate_set_parents(struct rb_node *old, struct rb_node *new,
   struct rb_root *root, int color)
{
 struct rb_node *parent = rb_parent(old);
 new->__rb_parent_color = old->__rb_parent_color;
 rb_set_parent_color(old, new, color);
 __rb_change_child(old, new, parent, root);
}
