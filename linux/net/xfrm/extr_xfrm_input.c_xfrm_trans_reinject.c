
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_trans_tasklet {int queue; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dev; } ;
struct TYPE_2__ {int (* finish ) (int ,int *,struct sk_buff*) ;} ;


 TYPE_1__* XFRM_TRANS_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int dev_net (int ) ;
 int skb_queue_splice_init (int *,struct sk_buff_head*) ;
 int stub1 (int ,int *,struct sk_buff*) ;

__attribute__((used)) static void xfrm_trans_reinject(unsigned long data)
{
 struct xfrm_trans_tasklet *trans = (void *)data;
 struct sk_buff_head queue;
 struct sk_buff *skb;

 __skb_queue_head_init(&queue);
 skb_queue_splice_init(&trans->queue, &queue);

 while ((skb = __skb_dequeue(&queue)))
  XFRM_TRANS_SKB_CB(skb)->finish(dev_net(skb->dev), ((void*)0), skb);
}
