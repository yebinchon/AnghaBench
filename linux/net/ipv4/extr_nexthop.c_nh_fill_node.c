
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nhmsg {int nh_family; scalar_t__ nh_scope; scalar_t__ resvd; int nh_protocol; int nh_flags; } ;
struct TYPE_2__ {scalar_t__ nhc_lwtstate; scalar_t__ nhc_scope; struct net_device* nhc_dev; } ;
struct fib6_nh {int fib_nh_gw6; int fib_nh_gw_family; } ;
struct fib_nh {int fib_nh_gw4; int fib_nh_gw_family; } ;
struct nh_info {int family; TYPE_1__ fib_nhc; struct fib6_nh fib6_nh; struct fib_nh fib_nh; scalar_t__ reject_nh; } ;
struct nh_group {int dummy; } ;
struct nexthop {int nh_info; int nh_grp; scalar_t__ is_group; int id; int protocol; int nh_flags; } ;
struct net_device {int ifindex; } ;




 int AF_UNSPEC ;
 int EMSGSIZE ;
 int NHA_BLACKHOLE ;
 int NHA_ENCAP ;
 int NHA_ENCAP_TYPE ;
 int NHA_GATEWAY ;
 int NHA_ID ;
 int NHA_OIF ;
 scalar_t__ lwtunnel_fill_encap (struct sk_buff*,scalar_t__,int ,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 int nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_nh_group (struct sk_buff*,struct nh_group*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct nhmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;
 void* rtnl_dereference (int ) ;

__attribute__((used)) static int nh_fill_node(struct sk_buff *skb, struct nexthop *nh,
   int event, u32 portid, u32 seq, unsigned int nlflags)
{
 struct fib6_nh *fib6_nh;
 struct fib_nh *fib_nh;
 struct nlmsghdr *nlh;
 struct nh_info *nhi;
 struct nhmsg *nhm;

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nhm), nlflags);
 if (!nlh)
  return -EMSGSIZE;

 nhm = nlmsg_data(nlh);
 nhm->nh_family = AF_UNSPEC;
 nhm->nh_flags = nh->nh_flags;
 nhm->nh_protocol = nh->protocol;
 nhm->nh_scope = 0;
 nhm->resvd = 0;

 if (nla_put_u32(skb, NHA_ID, nh->id))
  goto nla_put_failure;

 if (nh->is_group) {
  struct nh_group *nhg = rtnl_dereference(nh->nh_grp);

  if (nla_put_nh_group(skb, nhg))
   goto nla_put_failure;
  goto out;
 }

 nhi = rtnl_dereference(nh->nh_info);
 nhm->nh_family = nhi->family;
 if (nhi->reject_nh) {
  if (nla_put_flag(skb, NHA_BLACKHOLE))
   goto nla_put_failure;
  goto out;
 } else {
  const struct net_device *dev;

  dev = nhi->fib_nhc.nhc_dev;
  if (dev && nla_put_u32(skb, NHA_OIF, dev->ifindex))
   goto nla_put_failure;
 }

 nhm->nh_scope = nhi->fib_nhc.nhc_scope;
 switch (nhi->family) {
 case 129:
  fib_nh = &nhi->fib_nh;
  if (fib_nh->fib_nh_gw_family &&
      nla_put_u32(skb, NHA_GATEWAY, fib_nh->fib_nh_gw4))
   goto nla_put_failure;
  break;

 case 128:
  fib6_nh = &nhi->fib6_nh;
  if (fib6_nh->fib_nh_gw_family &&
      nla_put_in6_addr(skb, NHA_GATEWAY, &fib6_nh->fib_nh_gw6))
   goto nla_put_failure;
  break;
 }

 if (nhi->fib_nhc.nhc_lwtstate &&
     lwtunnel_fill_encap(skb, nhi->fib_nhc.nhc_lwtstate,
    NHA_ENCAP, NHA_ENCAP_TYPE) < 0)
  goto nla_put_failure;

out:
 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
