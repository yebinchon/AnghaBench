
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {struct xt_NFQ_info_v2* targinfo; } ;
struct xt_NFQ_info_v2 {scalar_t__ bypass; } ;
struct sk_buff {int dummy; } ;


 unsigned int NF_VERDICT_FLAG_QUEUE_BYPASS ;
 unsigned int nfqueue_tg_v1 (struct sk_buff*,struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
nfqueue_tg_v2(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_NFQ_info_v2 *info = par->targinfo;
 unsigned int ret = nfqueue_tg_v1(skb, par);

 if (info->bypass)
  ret |= NF_VERDICT_FLAG_QUEUE_BYPASS;
 return ret;
}
