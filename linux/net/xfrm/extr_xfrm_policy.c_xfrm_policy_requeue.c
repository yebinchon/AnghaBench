
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct xfrm_policy_queue {TYPE_1__ hold_queue; int hold_timer; int timeout; } ;
struct xfrm_policy {struct xfrm_policy_queue polq; } ;
struct sk_buff_head {int dummy; } ;


 int XFRM_QUEUE_TMO_MIN ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 scalar_t__ del_timer (int *) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ skb_queue_empty (TYPE_1__*) ;
 int skb_queue_splice (struct sk_buff_head*,TYPE_1__*) ;
 int skb_queue_splice_init (TYPE_1__*,struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_pol_hold (struct xfrm_policy*) ;
 int xfrm_pol_put (struct xfrm_policy*) ;

__attribute__((used)) static void xfrm_policy_requeue(struct xfrm_policy *old,
    struct xfrm_policy *new)
{
 struct xfrm_policy_queue *pq = &old->polq;
 struct sk_buff_head list;

 if (skb_queue_empty(&pq->hold_queue))
  return;

 __skb_queue_head_init(&list);

 spin_lock_bh(&pq->hold_queue.lock);
 skb_queue_splice_init(&pq->hold_queue, &list);
 if (del_timer(&pq->hold_timer))
  xfrm_pol_put(old);
 spin_unlock_bh(&pq->hold_queue.lock);

 pq = &new->polq;

 spin_lock_bh(&pq->hold_queue.lock);
 skb_queue_splice(&list, &pq->hold_queue);
 pq->timeout = XFRM_QUEUE_TMO_MIN;
 if (!mod_timer(&pq->hold_timer, jiffies))
  xfrm_pol_hold(new);
 spin_unlock_bh(&pq->hold_queue.lock);
}
