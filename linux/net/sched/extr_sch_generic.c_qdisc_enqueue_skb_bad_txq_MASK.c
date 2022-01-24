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
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {int flags; TYPE_1__ q; int /*<<< orphan*/  skb_bad_txq; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int TCQ_F_NOLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC8(struct Qdisc *q,
					     struct sk_buff *skb)
{
	spinlock_t *lock = NULL;

	if (q->flags & TCQ_F_NOLOCK) {
		lock = FUNC2(q);
		FUNC6(lock);
	}

	FUNC0(&q->skb_bad_txq, skb);

	if (FUNC1(q)) {
		FUNC4(q, skb);
		FUNC5(q);
	} else {
		FUNC3(q, skb);
		q->q.qlen++;
	}

	if (lock)
		FUNC7(lock);
}