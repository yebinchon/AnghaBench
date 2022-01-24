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
struct Qdisc {int flags; struct sk_buff* (* dequeue ) (struct Qdisc*) ;TYPE_1__ q; int /*<<< orphan*/  gso_skb; struct netdev_queue* dev_queue; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 struct sk_buff* SKB_XOFF_MAGIC ; 
 int TCQ_F_NOLOCK ; 
 int TCQ_F_ONETXQUEUE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct netdev_queue const*) ; 
 struct sk_buff* FUNC2 (struct Qdisc*) ; 
 scalar_t__ FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC4 (struct Qdisc*) ; 
 scalar_t__ FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 struct netdev_queue* FUNC9 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC14 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC15 (struct Qdisc*,struct netdev_queue const*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct Qdisc*,struct sk_buff*,struct netdev_queue const*,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct Qdisc*,struct sk_buff*,int*) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC20(struct Qdisc *q, bool *validate,
				   int *packets)
{
	const struct netdev_queue *txq = q->dev_queue;
	struct sk_buff *skb = NULL;

	*packets = 1;
	if (FUNC18(!FUNC11(&q->gso_skb))) {
		spinlock_t *lock = NULL;

		if (q->flags & TCQ_F_NOLOCK) {
			lock = FUNC4(q);
			FUNC12(lock);
		}

		skb = FUNC10(&q->gso_skb);

		/* skb may be null if another cpu pulls gso_skb off in between
		 * empty check and lock.
		 */
		if (!skb) {
			if (lock)
				FUNC13(lock);
			goto validate;
		}

		/* skb in gso_skb were already validated */
		*validate = false;
		if (FUNC19(skb))
			*validate = true;
		/* check the reason of requeuing without tx lock first */
		txq = FUNC9(txq->dev, skb);
		if (!FUNC1(txq)) {
			skb = FUNC0(&q->gso_skb);
			if (FUNC3(q)) {
				FUNC7(q, skb);
				FUNC8(q);
			} else {
				FUNC6(q, skb);
				q->q.qlen--;
			}
		} else {
			skb = NULL;
		}
		if (lock)
			FUNC13(lock);
		goto trace;
	}
validate:
	*validate = true;

	if ((q->flags & TCQ_F_ONETXQUEUE) &&
	    FUNC1(txq))
		return skb;

	skb = FUNC2(q);
	if (FUNC18(skb)) {
		if (skb == SKB_XOFF_MAGIC)
			return NULL;
		goto bulk;
	}
	skb = q->dequeue(q);
	if (skb) {
bulk:
		if (FUNC5(q))
			FUNC16(q, skb, txq, packets);
		else
			FUNC17(q, skb, packets);
	}
trace:
	FUNC15(q, txq, *packets, skb);
	return skb;
}