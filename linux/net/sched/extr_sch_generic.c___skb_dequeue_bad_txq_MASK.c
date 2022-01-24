#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct netdev_queue {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {int flags; TYPE_1__ q; int /*<<< orphan*/  skb_bad_txq; struct netdev_queue* dev_queue; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 struct sk_buff* SKB_XOFF_MAGIC ; 
 int TCQ_F_NOLOCK ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue const*) ; 
 scalar_t__ FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 struct netdev_queue* FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct sk_buff *FUNC11(struct Qdisc *q)
{
	const struct netdev_queue *txq = q->dev_queue;
	spinlock_t *lock = NULL;
	struct sk_buff *skb;

	if (q->flags & TCQ_F_NOLOCK) {
		lock = FUNC3(q);
		FUNC9(lock);
	}

	skb = FUNC8(&q->skb_bad_txq);
	if (skb) {
		/* check the reason of requeuing without tx lock first */
		txq = FUNC7(txq->dev, skb);
		if (!FUNC1(txq)) {
			skb = FUNC0(&q->skb_bad_txq);
			if (FUNC2(q)) {
				FUNC5(q, skb);
				FUNC6(q);
			} else {
				FUNC4(q, skb);
				q->q.qlen--;
			}
		} else {
			skb = SKB_XOFF_MAGIC;
		}
	}

	if (lock)
		FUNC10(lock);

	return skb;
}