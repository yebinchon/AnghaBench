#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ qlen; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {unsigned long expires; } ;
struct xfrm_policy_queue {unsigned long timeout; TYPE_3__ hold_queue; TYPE_1__ hold_timer; } ;
struct xfrm_policy {struct xfrm_policy_queue polq; } ;
struct xfrm_dst {struct xfrm_policy** pols; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ XFRM_MAX_QUEUE_LEN ; 
 unsigned long XFRM_QUEUE_TMO_MIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned long) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_policy*) ; 

__attribute__((used)) static int FUNC13(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	unsigned long sched_next;
	struct dst_entry *dst = FUNC4(skb);
	struct xfrm_dst *xdst = (struct xfrm_dst *) dst;
	struct xfrm_policy *pol = xdst->pols[0];
	struct xfrm_policy_queue *pq = &pol->polq;

	if (FUNC10(FUNC6(sk, skb))) {
		FUNC2(skb);
		return 0;
	}

	if (pq->hold_queue.qlen > XFRM_MAX_QUEUE_LEN) {
		FUNC2(skb);
		return -EAGAIN;
	}

	FUNC5(skb);

	FUNC7(&pq->hold_queue.lock);

	if (!pq->timeout)
		pq->timeout = XFRM_QUEUE_TMO_MIN;

	sched_next = jiffies + pq->timeout;

	if (FUNC1(&pq->hold_timer)) {
		if (FUNC9(pq->hold_timer.expires, sched_next))
			sched_next = pq->hold_timer.expires;
		FUNC12(pol);
	}

	FUNC0(&pq->hold_queue, skb);
	if (!FUNC3(&pq->hold_timer, sched_next))
		FUNC11(pol);

	FUNC8(&pq->hold_queue.lock);

	return 0;
}