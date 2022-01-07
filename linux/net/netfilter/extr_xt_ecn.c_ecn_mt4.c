
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_ecn_info {int operation; } ;
struct xt_action_param {struct xt_ecn_info* matchinfo; } ;
struct sk_buff {int dummy; } ;


 int XT_ECN_OP_MATCH_CWR ;
 int XT_ECN_OP_MATCH_ECE ;
 int XT_ECN_OP_MATCH_IP ;
 int match_ip (struct sk_buff const*,struct xt_ecn_info const*) ;
 int match_tcp (struct sk_buff const*,struct xt_action_param*) ;

__attribute__((used)) static bool ecn_mt4(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_ecn_info *info = par->matchinfo;

 if (info->operation & XT_ECN_OP_MATCH_IP && !match_ip(skb, info))
  return 0;

 if (info->operation & (XT_ECN_OP_MATCH_ECE | XT_ECN_OP_MATCH_CWR) &&
     !match_tcp(skb, par))
  return 0;

 return 1;
}
