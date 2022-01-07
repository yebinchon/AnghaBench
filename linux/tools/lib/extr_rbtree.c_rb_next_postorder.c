
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {scalar_t__ rb_right; struct rb_node const* rb_left; } ;


 struct rb_node* rb_left_deepest_node (scalar_t__) ;
 struct rb_node* rb_parent (struct rb_node const*) ;

struct rb_node *rb_next_postorder(const struct rb_node *node)
{
 const struct rb_node *parent;
 if (!node)
  return ((void*)0);
 parent = rb_parent(node);


 if (parent && node == parent->rb_left && parent->rb_right) {


  return rb_left_deepest_node(parent->rb_right);
 } else


  return (struct rb_node *)parent;
}
