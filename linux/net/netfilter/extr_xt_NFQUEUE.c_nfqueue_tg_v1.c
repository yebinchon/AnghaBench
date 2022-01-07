
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xt_action_param {struct xt_NFQ_info_v1* targinfo; } ;
struct xt_NFQ_info_v1 {int queues_total; int queuenum; } ;
struct sk_buff {int dummy; } ;


 unsigned int NF_QUEUE_NR (int ) ;
 int jhash_initval ;
 int nfqueue_hash (struct sk_buff*,int ,int,int ,int ) ;
 int xt_family (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
nfqueue_tg_v1(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_NFQ_info_v1 *info = par->targinfo;
 u32 queue = info->queuenum;

 if (info->queues_total > 1) {
  queue = nfqueue_hash(skb, queue, info->queues_total,
         xt_family(par), jhash_initval);
 }
 return NF_QUEUE_NR(queue);
}
