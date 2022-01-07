
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psample_group {int refcount; } ;


 int psample_groups_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void psample_group_take(struct psample_group *group)
{
 spin_lock_bh(&psample_groups_lock);
 group->refcount++;
 spin_unlock_bh(&psample_groups_lock);
}
