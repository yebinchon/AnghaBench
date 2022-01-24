#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int (* enqueue ) (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;int /*<<< orphan*/  busylock; int /*<<< orphan*/  state; scalar_t__ empty; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int NET_XMIT_DROP ; 
 int NET_XMIT_MASK ; 
 int NET_XMIT_SUCCESS ; 
 int TCQ_F_CAN_BYPASS ; 
 int TCQ_F_NOLOCK ; 
 int /*<<< orphan*/  __QDISC_STATE_DEACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct Qdisc*) ; 
 int FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 
 scalar_t__ FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC16 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static inline int FUNC19(struct sk_buff *skb, struct Qdisc *q,
				 struct net_device *dev,
				 struct netdev_queue *txq)
{
	spinlock_t *root_lock = FUNC7(q);
	struct sk_buff *to_free = NULL;
	bool contended;
	int rc;

	FUNC5(skb, q);

	if (q->flags & TCQ_F_NOLOCK) {
		if ((q->flags & TCQ_F_CAN_BYPASS) && q->empty &&
		    FUNC10(q)) {
			if (FUNC18(FUNC17(__QDISC_STATE_DEACTIVATED,
					      &q->state))) {
				FUNC0(skb, &to_free);
				rc = NET_XMIT_DROP;
				goto end_run;
			}
			FUNC3(q, skb);

			rc = NET_XMIT_SUCCESS;
			if (FUNC12(skb, q, dev, txq, NULL, true))
				FUNC1(q);

end_run:
			FUNC11(q);
		} else {
			rc = q->enqueue(skb, q, &to_free) & NET_XMIT_MASK;
			FUNC9(q);
		}

		if (FUNC18(to_free))
			FUNC2(to_free);
		return rc;
	}

	/*
	 * Heuristic to force contended enqueues to serialize on a
	 * separate lock before trying to get qdisc main lock.
	 * This permits qdisc->running owner to get the lock more
	 * often and dequeue packets faster.
	 */
	contended = FUNC6(q);
	if (FUNC18(contended))
		FUNC13(&q->busylock);

	FUNC13(root_lock);
	if (FUNC18(FUNC17(__QDISC_STATE_DEACTIVATED, &q->state))) {
		FUNC0(skb, &to_free);
		rc = NET_XMIT_DROP;
	} else if ((q->flags & TCQ_F_CAN_BYPASS) && !FUNC8(q) &&
		   FUNC10(q)) {
		/*
		 * This is a work-conserving queue; there are no old skbs
		 * waiting to be sent out; and the qdisc is not running -
		 * xmit the skb directly.
		 */

		FUNC4(q, skb);

		if (FUNC12(skb, q, dev, txq, root_lock, true)) {
			if (FUNC18(contended)) {
				FUNC14(&q->busylock);
				contended = false;
			}
			FUNC1(q);
		}

		FUNC11(q);
		rc = NET_XMIT_SUCCESS;
	} else {
		rc = q->enqueue(skb, q, &to_free) & NET_XMIT_MASK;
		if (FUNC10(q)) {
			if (FUNC18(contended)) {
				FUNC14(&q->busylock);
				contended = false;
			}
			FUNC1(q);
			FUNC11(q);
		}
	}
	FUNC14(root_lock);
	if (FUNC18(to_free))
		FUNC2(to_free);
	if (FUNC18(contended))
		FUNC14(&q->busylock);
	return rc;
}