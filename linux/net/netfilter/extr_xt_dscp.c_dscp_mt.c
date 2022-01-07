
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct xt_dscp_info {scalar_t__ dscp; int invert; } ;
struct xt_action_param {struct xt_dscp_info* matchinfo; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ XT_DSCP_SHIFT ;
 int ip_hdr (struct sk_buff const*) ;
 scalar_t__ ipv4_get_dsfield (int ) ;

__attribute__((used)) static bool
dscp_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_dscp_info *info = par->matchinfo;
 u_int8_t dscp = ipv4_get_dsfield(ip_hdr(skb)) >> XT_DSCP_SHIFT;

 return (dscp == info->dscp) ^ !!info->invert;
}
