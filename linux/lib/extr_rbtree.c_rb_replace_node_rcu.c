
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {scalar_t__ rb_right; scalar_t__ rb_left; } ;


 int __rb_change_child_rcu (struct rb_node*,struct rb_node*,struct rb_node*,struct rb_root*) ;
 struct rb_node* rb_parent (struct rb_node*) ;
 int rb_set_parent (scalar_t__,struct rb_node*) ;

void rb_replace_node_rcu(struct rb_node *victim, struct rb_node *new,
    struct rb_root *root)
{
 struct rb_node *parent = rb_parent(victim);


 *new = *victim;


 if (victim->rb_left)
  rb_set_parent(victim->rb_left, new);
 if (victim->rb_right)
  rb_set_parent(victim->rb_right, new);





 __rb_change_child_rcu(victim, new, parent, root);
}
