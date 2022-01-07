
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct mpls_route {int dummy; } ;
struct mpls_nh {int nh_via_table; int nh_via_alen; int nh_label; int nh_labels; } ;


 int ENOMEM ;
 int MPLS_NEIGH_TABLE_UNSPEC ;
 int __mpls_nh_via (struct mpls_route*,struct mpls_nh*) ;
 int mpls_nh_assign_dev (struct net*,struct mpls_route*,struct mpls_nh*,int) ;
 int nla_get_labels (struct nlattr*,int ,int *,int ,struct netlink_ext_ack*) ;
 int nla_get_via (struct nlattr*,int *,int *,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int mpls_nh_build(struct net *net, struct mpls_route *rt,
    struct mpls_nh *nh, int oif, struct nlattr *via,
    struct nlattr *newdst, u8 max_labels,
    struct netlink_ext_ack *extack)
{
 int err = -ENOMEM;

 if (!nh)
  goto errout;

 if (newdst) {
  err = nla_get_labels(newdst, max_labels, &nh->nh_labels,
         nh->nh_label, extack);
  if (err)
   goto errout;
 }

 if (via) {
  err = nla_get_via(via, &nh->nh_via_alen, &nh->nh_via_table,
      __mpls_nh_via(rt, nh), extack);
  if (err)
   goto errout;
 } else {
  nh->nh_via_table = MPLS_NEIGH_TABLE_UNSPEC;
 }

 err = mpls_nh_assign_dev(net, rt, nh, oif);
 if (err)
  goto errout;

 return 0;

errout:
 return err;
}
