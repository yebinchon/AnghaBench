
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
struct xfrm_policy_queue {int timeout; TYPE_2__ hold_queue; int hold_timer; } ;
struct xfrm_policy {struct xfrm_policy_queue polq; } ;
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int flags; TYPE_1__* ops; } ;
struct TYPE_8__ {int hold_timer; } ;
struct TYPE_6__ {int family; } ;


 int DST_XFRM_QUEUE ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int XFRM_LOOKUP_QUEUE ;
 int XFRM_QUEUE_TMO_MAX ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int dst_hold (int ) ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 int dst_release (struct dst_entry*) ;
 struct xfrm_policy* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 int nf_reset_ct (struct sk_buff*) ;
 struct xfrm_policy* pol ;
 TYPE_5__ polq ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 struct sk_buff* skb_peek (TYPE_2__*) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int skb_queue_purge (TYPE_2__*) ;
 int skb_queue_splice_init (TYPE_2__*,struct sk_buff_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfrm_decode_session (struct sk_buff*,struct flowi*,int ) ;
 int xfrm_dst_path (struct dst_entry*) ;
 struct dst_entry* xfrm_lookup (struct net*,int ,struct flowi*,struct sock*,int ) ;
 int xfrm_pol_hold (struct xfrm_policy*) ;
 int xfrm_pol_put (struct xfrm_policy*) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static void xfrm_policy_queue_process(struct timer_list *t)
{
 struct sk_buff *skb;
 struct sock *sk;
 struct dst_entry *dst;
 struct xfrm_policy *pol = from_timer(pol, t, polq.hold_timer);
 struct net *net = xp_net(pol);
 struct xfrm_policy_queue *pq = &pol->polq;
 struct flowi fl;
 struct sk_buff_head list;

 spin_lock(&pq->hold_queue.lock);
 skb = skb_peek(&pq->hold_queue);
 if (!skb) {
  spin_unlock(&pq->hold_queue.lock);
  goto out;
 }
 dst = skb_dst(skb);
 sk = skb->sk;
 xfrm_decode_session(skb, &fl, dst->ops->family);
 spin_unlock(&pq->hold_queue.lock);

 dst_hold(xfrm_dst_path(dst));
 dst = xfrm_lookup(net, xfrm_dst_path(dst), &fl, sk, XFRM_LOOKUP_QUEUE);
 if (IS_ERR(dst))
  goto purge_queue;

 if (dst->flags & DST_XFRM_QUEUE) {
  dst_release(dst);

  if (pq->timeout >= XFRM_QUEUE_TMO_MAX)
   goto purge_queue;

  pq->timeout = pq->timeout << 1;
  if (!mod_timer(&pq->hold_timer, jiffies + pq->timeout))
   xfrm_pol_hold(pol);
  goto out;
 }

 dst_release(dst);

 __skb_queue_head_init(&list);

 spin_lock(&pq->hold_queue.lock);
 pq->timeout = 0;
 skb_queue_splice_init(&pq->hold_queue, &list);
 spin_unlock(&pq->hold_queue.lock);

 while (!skb_queue_empty(&list)) {
  skb = __skb_dequeue(&list);

  xfrm_decode_session(skb, &fl, skb_dst(skb)->ops->family);
  dst_hold(xfrm_dst_path(skb_dst(skb)));
  dst = xfrm_lookup(net, xfrm_dst_path(skb_dst(skb)), &fl, skb->sk, 0);
  if (IS_ERR(dst)) {
   kfree_skb(skb);
   continue;
  }

  nf_reset_ct(skb);
  skb_dst_drop(skb);
  skb_dst_set(skb, dst);

  dst_output(net, skb->sk, skb);
 }

out:
 xfrm_pol_put(pol);
 return;

purge_queue:
 pq->timeout = 0;
 skb_queue_purge(&pq->hold_queue);
 xfrm_pol_put(pol);
}
