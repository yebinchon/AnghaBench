
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root_cached {int rb_root; struct rb_node* rb_leftmost; } ;
struct rb_node {int dummy; } ;


 int rb_replace_node (struct rb_node*,struct rb_node*,int *) ;

__attribute__((used)) static inline void rb_replace_node_cached(struct rb_node *victim,
       struct rb_node *new,
       struct rb_root_cached *root)
{
 if (root->rb_leftmost == victim)
  root->rb_leftmost = new;
 rb_replace_node(victim, new, &root->rb_root);
}
