
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root_cached {int rb_root; struct rb_node* rb_leftmost; } ;
struct rb_node {int dummy; } ;


 int rb_erase (struct rb_node*,int *) ;
 struct rb_node* rb_next (struct rb_node*) ;

__attribute__((used)) static inline void rb_erase_cached(struct rb_node *node,
       struct rb_root_cached *root)
{
 if (root->rb_leftmost == node)
  root->rb_leftmost = rb_next(node);
 rb_erase(node, &root->rb_root);
}
