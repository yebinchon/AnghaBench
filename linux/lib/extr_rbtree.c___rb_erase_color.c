
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;


 int ____rb_erase_color (struct rb_node*,struct rb_root*,void (*) (struct rb_node*,struct rb_node*)) ;

void __rb_erase_color(struct rb_node *parent, struct rb_root *root,
 void (*augment_rotate)(struct rb_node *old, struct rb_node *new))
{
 ____rb_erase_color(parent, root, augment_rotate);
}
