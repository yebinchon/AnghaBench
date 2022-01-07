
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_profile {int parent; TYPE_1__* ns; } ;
struct TYPE_2__ {int lock; } ;


 struct aa_profile* aa_get_newest_profile (struct aa_profile*) ;
 int aa_put_profile (struct aa_profile*) ;
 int mutex_is_locked (int *) ;
 int rcu_assign_pointer (int ,struct aa_profile*) ;
 struct aa_profile* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static struct aa_profile *update_to_newest_parent(struct aa_profile *new)
{
 struct aa_profile *parent, *newest;

 parent = rcu_dereference_protected(new->parent,
        mutex_is_locked(&new->ns->lock));
 newest = aa_get_newest_profile(parent);


 if (newest != parent) {
  aa_put_profile(parent);
  rcu_assign_pointer(new->parent, newest);
 } else
  aa_put_profile(newest);

 return newest;
}
