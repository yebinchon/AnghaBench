
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;


 int __rb_insert (struct rb_node*,struct rb_root*,int ) ;
 int dummy_rotate ;

void rb_insert_color(struct rb_node *node, struct rb_root *root)
{
 __rb_insert(node, root, dummy_rotate);
}
