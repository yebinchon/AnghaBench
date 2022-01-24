#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct xfrm_policy_queue {int timeout; TYPE_2__ hold_queue; int /*<<< orphan*/  hold_timer; } ;
struct xfrm_policy {struct xfrm_policy_queue polq; } ;
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int flags; TYPE_1__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  hold_timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int DST_XFRM_QUEUE ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  XFRM_LOOKUP_QUEUE ; 
 int XFRM_QUEUE_TMO_MAX ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 struct xfrm_policy* FUNC6 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct xfrm_policy* pol ; 
 TYPE_5__ polq ; 
 struct dst_entry* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct dst_entry*) ; 
 struct sk_buff* FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,struct flowi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct dst_entry*) ; 
 struct dst_entry* FUNC21 (struct net*,int /*<<< orphan*/ ,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC23 (struct xfrm_policy*) ; 
 struct net* FUNC24 (struct xfrm_policy*) ; 

__attribute__((used)) static void FUNC25(struct timer_list *t)
{
	struct sk_buff *skb;
	struct sock *sk;
	struct dst_entry *dst;
	struct xfrm_policy *pol = FUNC6(pol, t, polq.hold_timer);
	struct net *net = FUNC24(pol);
	struct xfrm_policy_queue *pq = &pol->polq;
	struct flowi fl;
	struct sk_buff_head list;

	FUNC17(&pq->hold_queue.lock);
	skb = FUNC13(&pq->hold_queue);
	if (!skb) {
		FUNC18(&pq->hold_queue.lock);
		goto out;
	}
	dst = FUNC10(skb);
	sk = skb->sk;
	FUNC19(skb, &fl, dst->ops->family);
	FUNC18(&pq->hold_queue.lock);

	FUNC3(FUNC20(dst));
	dst = FUNC21(net, FUNC20(dst), &fl, sk, XFRM_LOOKUP_QUEUE);
	if (FUNC0(dst))
		goto purge_queue;

	if (dst->flags & DST_XFRM_QUEUE) {
		FUNC5(dst);

		if (pq->timeout >= XFRM_QUEUE_TMO_MAX)
			goto purge_queue;

		pq->timeout = pq->timeout << 1;
		if (!FUNC8(&pq->hold_timer, jiffies + pq->timeout))
			FUNC22(pol);
		goto out;
	}

	FUNC5(dst);

	FUNC2(&list);

	FUNC17(&pq->hold_queue.lock);
	pq->timeout = 0;
	FUNC16(&pq->hold_queue, &list);
	FUNC18(&pq->hold_queue.lock);

	while (!FUNC14(&list)) {
		skb = FUNC1(&list);

		FUNC19(skb, &fl, FUNC10(skb)->ops->family);
		FUNC3(FUNC20(FUNC10(skb)));
		dst = FUNC21(net, FUNC20(FUNC10(skb)), &fl, skb->sk, 0);
		if (FUNC0(dst)) {
			FUNC7(skb);
			continue;
		}

		FUNC9(skb);
		FUNC11(skb);
		FUNC12(skb, dst);

		FUNC4(net, skb->sk, skb);
	}

out:
	FUNC23(pol);
	return;

purge_queue:
	pq->timeout = 0;
	FUNC15(&pq->hold_queue);
	FUNC23(pol);
}