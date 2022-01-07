
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nh_group {int num_nh; TYPE_1__* nh_entries; } ;
struct nexthop {int nh_grp; int is_group; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct nexthop* nh_parent; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int rcu_assign_pointer (int ,struct nh_group*) ;
 struct nh_group* rtnl_dereference (int ) ;

__attribute__((used)) static int replace_nexthop_grp(struct net *net, struct nexthop *old,
          struct nexthop *new,
          struct netlink_ext_ack *extack)
{
 struct nh_group *oldg, *newg;
 int i;

 if (!new->is_group) {
  NL_SET_ERR_MSG(extack, "Can not replace a nexthop group with a nexthop.");
  return -EINVAL;
 }

 oldg = rtnl_dereference(old->nh_grp);
 newg = rtnl_dereference(new->nh_grp);


 for (i = 0; i < newg->num_nh; i++)
  newg->nh_entries[i].nh_parent = old;

 rcu_assign_pointer(old->nh_grp, newg);

 for (i = 0; i < oldg->num_nh; i++)
  oldg->nh_entries[i].nh_parent = new;

 rcu_assign_pointer(new->nh_grp, oldg);

 return 0;
}
