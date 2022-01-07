
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psample_group {scalar_t__ refcount; } ;


 int psample_group_destroy (struct psample_group*) ;
 int psample_groups_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void psample_group_put(struct psample_group *group)
{
 spin_lock_bh(&psample_groups_lock);

 if (--group->refcount == 0)
  psample_group_destroy(group);

 spin_unlock_bh(&psample_groups_lock);
}
