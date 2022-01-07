
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nh_info {struct nexthop* nh_parent; } ;
struct nexthop {int nh_info; int nh_flags; int protocol; scalar_t__ is_group; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int rcu_assign_pointer (int ,struct nh_info*) ;
 struct nh_info* rtnl_dereference (int ) ;

__attribute__((used)) static int replace_nexthop_single(struct net *net, struct nexthop *old,
      struct nexthop *new,
      struct netlink_ext_ack *extack)
{
 struct nh_info *oldi, *newi;

 if (new->is_group) {
  NL_SET_ERR_MSG(extack, "Can not replace a nexthop with a nexthop group.");
  return -EINVAL;
 }

 oldi = rtnl_dereference(old->nh_info);
 newi = rtnl_dereference(new->nh_info);

 newi->nh_parent = old;
 oldi->nh_parent = new;

 old->protocol = new->protocol;
 old->nh_flags = new->nh_flags;

 rcu_assign_pointer(old->nh_info, newi);
 rcu_assign_pointer(new->nh_info, oldi);

 return 0;
}
