
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct rb_node {struct rb_node const* rb_left; struct rb_node const* rb_right; } const rb_node ;


 scalar_t__ RB_EMPTY_NODE (struct rb_node const*) ;
 struct rb_node const* rb_parent (struct rb_node const*) ;

struct rb_node *rb_prev(const struct rb_node *node)
{
 struct rb_node *parent;

 if (RB_EMPTY_NODE(node))
  return ((void*)0);





 if (node->rb_left) {
  node = node->rb_left;
  while (node->rb_right)
   node=node->rb_right;
  return (struct rb_node *)node;
 }





 while ((parent = rb_parent(node)) && node == parent->rb_left)
  node = parent;

 return parent;
}
