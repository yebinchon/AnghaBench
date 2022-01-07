
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rpfilter_info {int flags; } ;
struct xt_action_param {struct xt_rpfilter_info* matchinfo; } ;
struct sk_buff {int mark; } ;
struct iphdr {int tos; int daddr; int saddr; } ;
struct flowi4 {int flowi4_oif; int flowi4_scope; int flowi4_tos; int flowi4_mark; int saddr; int daddr; int flowi4_iif; } ;
typedef int flow ;


 int LOOPBACK_IFINDEX ;
 int RT_SCOPE_UNIVERSE ;
 int RT_TOS (int ) ;
 int XT_RPFILTER_INVERT ;
 int XT_RPFILTER_VALID_MARK ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 scalar_t__ ipv4_is_lbcast (int ) ;
 scalar_t__ ipv4_is_local_multicast (int ) ;
 scalar_t__ ipv4_is_zeronet (int ) ;
 int l3mdev_master_ifindex_rcu (int ) ;
 int memset (struct flowi4*,int ,int) ;
 int rpfilter_get_saddr (int ) ;
 scalar_t__ rpfilter_is_loopback (struct sk_buff const*,int ) ;
 int rpfilter_lookup_reverse (int ,struct flowi4*,int ,int) ;
 int xt_in (struct xt_action_param*) ;
 int xt_net (struct xt_action_param*) ;

__attribute__((used)) static bool rpfilter_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_rpfilter_info *info;
 const struct iphdr *iph;
 struct flowi4 flow;
 bool invert;

 info = par->matchinfo;
 invert = info->flags & XT_RPFILTER_INVERT;

 if (rpfilter_is_loopback(skb, xt_in(par)))
  return 1 ^ invert;

 iph = ip_hdr(skb);
 if (ipv4_is_zeronet(iph->saddr)) {
  if (ipv4_is_lbcast(iph->daddr) ||
      ipv4_is_local_multicast(iph->daddr))
   return 1 ^ invert;
 }

 memset(&flow, 0, sizeof(flow));
 flow.flowi4_iif = LOOPBACK_IFINDEX;
 flow.daddr = iph->saddr;
 flow.saddr = rpfilter_get_saddr(iph->daddr);
 flow.flowi4_mark = info->flags & XT_RPFILTER_VALID_MARK ? skb->mark : 0;
 flow.flowi4_tos = RT_TOS(iph->tos);
 flow.flowi4_scope = RT_SCOPE_UNIVERSE;
 flow.flowi4_oif = l3mdev_master_ifindex_rcu(xt_in(par));

 return rpfilter_lookup_reverse(xt_net(par), &flow, xt_in(par), info->flags) ^ invert;
}
