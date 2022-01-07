
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct rb_node {struct rb_node const* rb_right; struct rb_node const* rb_left; } const rb_node ;


 scalar_t__ RB_EMPTY_NODE (struct rb_node const*) ;
 struct rb_node const* rb_parent (struct rb_node const*) ;

struct rb_node *rb_next(const struct rb_node *node)
{
 struct rb_node *parent;

 if (RB_EMPTY_NODE(node))
  return ((void*)0);





 if (node->rb_right) {
  node = node->rb_right;
  while (node->rb_left)
   node=node->rb_left;
  return (struct rb_node *)node;
 }
 while ((parent = rb_parent(node)) && node == parent->rb_right)
  node = parent;

 return parent;
}
