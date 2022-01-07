
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;


 int rb_link_node (struct rb_node*,struct rb_node*,struct rb_node**) ;

__attribute__((used)) static inline void rb_link_right_of_node(struct rb_node *right, struct rb_node *node)
{
 struct rb_node **p = &node->rb_right;
 while (*p) {
  node = *p;
  p = &node->rb_left;
 }
 rb_link_node(right, node, p);
}
