
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int rb_node; } ;
struct rb_node {int dummy; } ;


 struct rb_node* rb_left_deepest_node (int ) ;

struct rb_node *rb_first_postorder(const struct rb_root *root)
{
 if (!root->rb_node)
  return ((void*)0);

 return rb_left_deepest_node(root->rb_node);
}
