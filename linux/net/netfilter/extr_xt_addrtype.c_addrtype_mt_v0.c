
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_addrtype_info {int invert_source; int invert_dest; scalar_t__ dest; scalar_t__ source; } ;
struct xt_action_param {struct xt_addrtype_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;


 struct iphdr* ip_hdr (struct sk_buff const*) ;
 int match_type (struct net*,int *,int ,scalar_t__) ;
 struct net* xt_net (struct xt_action_param*) ;

__attribute__((used)) static bool
addrtype_mt_v0(const struct sk_buff *skb, struct xt_action_param *par)
{
 struct net *net = xt_net(par);
 const struct xt_addrtype_info *info = par->matchinfo;
 const struct iphdr *iph = ip_hdr(skb);
 bool ret = 1;

 if (info->source)
  ret &= match_type(net, ((void*)0), iph->saddr, info->source) ^
         info->invert_source;
 if (info->dest)
  ret &= match_type(net, ((void*)0), iph->daddr, info->dest) ^
         info->invert_dest;

 return ret;
}
