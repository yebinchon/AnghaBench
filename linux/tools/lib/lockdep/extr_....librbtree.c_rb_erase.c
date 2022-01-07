
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;


 int ____rb_erase_color (struct rb_node*,struct rb_root*,int ) ;
 struct rb_node* __rb_erase_augmented (struct rb_node*,struct rb_root*,int *) ;
 int dummy_callbacks ;
 int dummy_rotate ;

void rb_erase(struct rb_node *node, struct rb_root *root)
{
 struct rb_node *rebalance;
 rebalance = __rb_erase_augmented(node, root, &dummy_callbacks);
 if (rebalance)
  ____rb_erase_color(rebalance, root, dummy_rotate);
}
