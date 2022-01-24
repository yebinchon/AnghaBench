#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_3__ {int /*<<< orphan*/  requeues; } ;
struct Qdisc {int flags; TYPE_2__ q; TYPE_1__ qstats; int /*<<< orphan*/  gso_skb; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int TCQ_F_NOLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC10(struct sk_buff *skb, struct Qdisc *q)
{
	spinlock_t *lock = NULL;

	if (q->flags & TCQ_F_NOLOCK) {
		lock = FUNC3(q);
		FUNC8(lock);
	}

	while (skb) {
		struct sk_buff *next = skb->next;

		FUNC1(&q->gso_skb, skb);

		/* it's still part of the queue */
		if (FUNC2(q)) {
			FUNC7(q);
			FUNC5(q, skb);
			FUNC6(q);
		} else {
			q->qstats.requeues++;
			FUNC4(q, skb);
			q->q.qlen++;
		}

		skb = next;
	}
	if (lock)
		FUNC9(lock);
	FUNC0(q);
}