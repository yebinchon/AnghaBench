
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;



__attribute__((used)) static struct rb_node *rb_left_deepest_node(const struct rb_node *node)
{
 for (;;) {
  if (node->rb_left)
   node = node->rb_left;
  else if (node->rb_right)
   node = node->rb_right;
  else
   return (struct rb_node *)node;
 }
}
