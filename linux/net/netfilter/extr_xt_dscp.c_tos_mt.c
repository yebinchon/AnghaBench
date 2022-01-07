
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tos_match_info {int tos_mask; int tos_value; int invert; } ;
struct xt_action_param {struct xt_tos_match_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tos; } ;


 scalar_t__ NFPROTO_IPV4 ;
 TYPE_1__* ip_hdr (struct sk_buff const*) ;
 int ipv6_get_dsfield (int ) ;
 int ipv6_hdr (struct sk_buff const*) ;
 scalar_t__ xt_family (struct xt_action_param*) ;

__attribute__((used)) static bool tos_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_tos_match_info *info = par->matchinfo;

 if (xt_family(par) == NFPROTO_IPV4)
  return ((ip_hdr(skb)->tos & info->tos_mask) ==
         info->tos_value) ^ !!info->invert;
 else
  return ((ipv6_get_dsfield(ipv6_hdr(skb)) & info->tos_mask) ==
         info->tos_value) ^ !!info->invert;
}
