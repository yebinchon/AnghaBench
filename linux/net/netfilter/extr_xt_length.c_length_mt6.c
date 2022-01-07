
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct xt_length_info {scalar_t__ const min; scalar_t__ const max; int invert; } ;
struct xt_action_param {struct xt_length_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int payload_len; } ;


 TYPE_1__* ipv6_hdr (struct sk_buff const*) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static bool
length_mt6(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_length_info *info = par->matchinfo;
 const u_int16_t pktlen = ntohs(ipv6_hdr(skb)->payload_len) +
     sizeof(struct ipv6hdr);

 return (pktlen >= info->min && pktlen <= info->max) ^ info->invert;
}
