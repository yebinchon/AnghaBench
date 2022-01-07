
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct kernfs_node {struct kernfs_node* parent; int rb; } ;


 struct kernfs_node* kernfs_leftmost_descendant (struct kernfs_node*) ;
 int kernfs_mutex ;
 int lockdep_assert_held (int *) ;
 struct rb_node* rb_next (int *) ;
 struct kernfs_node* rb_to_kn (struct rb_node*) ;

__attribute__((used)) static struct kernfs_node *kernfs_next_descendant_post(struct kernfs_node *pos,
             struct kernfs_node *root)
{
 struct rb_node *rbn;

 lockdep_assert_held(&kernfs_mutex);


 if (!pos)
  return kernfs_leftmost_descendant(root);


 if (pos == root)
  return ((void*)0);


 rbn = rb_next(&pos->rb);
 if (rbn)
  return kernfs_leftmost_descendant(rb_to_kn(rbn));


 return pos->parent;
}
