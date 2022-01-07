
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;


 int __rb_insert (struct rb_node*,struct rb_root*,void (*) (struct rb_node*,struct rb_node*)) ;

void __rb_insert_augmented(struct rb_node *node, struct rb_root *root,
 void (*augment_rotate)(struct rb_node *old, struct rb_node *new))
{
 __rb_insert(node, root, augment_rotate);
}
