
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 unsigned int XT_CONTINUE ;
 int skb_checksum_help (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static unsigned int
checksum_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 if (skb->ip_summed == CHECKSUM_PARTIAL && !skb_is_gso(skb))
  skb_checksum_help(skb);

 return XT_CONTINUE;
}
