
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netconfmsg {int ncm_family; } ;
struct ipv6_devconf {int forwarding; int mc_forwarding; int proxy_ndp; int ignore_routes_with_linkdown; } ;


 int AF_INET6 ;
 int EMSGSIZE ;
 int NETCONFA_ALL ;
 int NETCONFA_FORWARDING ;
 int NETCONFA_IFINDEX ;
 int NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN ;
 int NETCONFA_MC_FORWARDING ;
 int NETCONFA_PROXY_NEIGH ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct netconfmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;

__attribute__((used)) static int inet6_netconf_fill_devconf(struct sk_buff *skb, int ifindex,
          struct ipv6_devconf *devconf, u32 portid,
          u32 seq, int event, unsigned int flags,
          int type)
{
 struct nlmsghdr *nlh;
 struct netconfmsg *ncm;
 bool all = 0;

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(struct netconfmsg),
   flags);
 if (!nlh)
  return -EMSGSIZE;

 if (type == NETCONFA_ALL)
  all = 1;

 ncm = nlmsg_data(nlh);
 ncm->ncm_family = AF_INET6;

 if (nla_put_s32(skb, NETCONFA_IFINDEX, ifindex) < 0)
  goto nla_put_failure;

 if (!devconf)
  goto out;

 if ((all || type == NETCONFA_FORWARDING) &&
     nla_put_s32(skb, NETCONFA_FORWARDING, devconf->forwarding) < 0)
  goto nla_put_failure;






 if ((all || type == NETCONFA_PROXY_NEIGH) &&
     nla_put_s32(skb, NETCONFA_PROXY_NEIGH, devconf->proxy_ndp) < 0)
  goto nla_put_failure;

 if ((all || type == NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN) &&
     nla_put_s32(skb, NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN,
   devconf->ignore_routes_with_linkdown) < 0)
  goto nla_put_failure;

out:
 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
