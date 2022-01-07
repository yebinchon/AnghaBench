
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_profile {TYPE_1__* ns; int parent; } ;
struct TYPE_2__ {int lock; } ;


 int mutex_is_locked (int *) ;
 struct aa_profile* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline struct aa_profile *aa_deref_parent(struct aa_profile *p)
{
 return rcu_dereference_protected(p->parent,
      mutex_is_locked(&p->ns->lock));
}
