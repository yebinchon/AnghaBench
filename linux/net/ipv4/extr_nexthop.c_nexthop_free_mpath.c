
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nh_group {int num_nh; TYPE_1__* nh_entries; } ;
struct nexthop {int nh_grp; } ;
struct TYPE_2__ {int nh; } ;


 int WARN_ON (int ) ;
 int kfree (struct nh_group*) ;
 struct nh_group* rcu_dereference_raw (int ) ;

__attribute__((used)) static void nexthop_free_mpath(struct nexthop *nh)
{
 struct nh_group *nhg;
 int i;

 nhg = rcu_dereference_raw(nh->nh_grp);
 for (i = 0; i < nhg->num_nh; ++i)
  WARN_ON(nhg->nh_entries[i].nh);

 kfree(nhg);
}
