
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_trans_tasklet {int tasklet; int queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* finish ) (struct net*,struct sock*,struct sk_buff*) ;} ;


 int ENOBUFS ;
 TYPE_1__* XFRM_TRANS_SKB_CB (struct sk_buff*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ netdev_max_backlog ;
 scalar_t__ skb_queue_len (int *) ;
 int tasklet_schedule (int *) ;
 struct xfrm_trans_tasklet* this_cpu_ptr (int *) ;
 int xfrm_trans_tasklet ;

int xfrm_trans_queue(struct sk_buff *skb,
       int (*finish)(struct net *, struct sock *,
       struct sk_buff *))
{
 struct xfrm_trans_tasklet *trans;

 trans = this_cpu_ptr(&xfrm_trans_tasklet);

 if (skb_queue_len(&trans->queue) >= netdev_max_backlog)
  return -ENOBUFS;

 XFRM_TRANS_SKB_CB(skb)->finish = finish;
 __skb_queue_tail(&trans->queue, skb);
 tasklet_schedule(&trans->tasklet);
 return 0;
}
