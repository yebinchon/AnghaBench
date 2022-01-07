
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root_cached {int rb_root; struct rb_node* rb_leftmost; } ;
struct rb_node {int dummy; } ;


 int rb_insert_color (struct rb_node*,int *) ;

__attribute__((used)) static inline void rb_insert_color_cached(struct rb_node *node,
       struct rb_root_cached *root,
       bool leftmost)
{
 if (leftmost)
  root->rb_leftmost = node;
 rb_insert_color(node, &root->rb_root);
}
