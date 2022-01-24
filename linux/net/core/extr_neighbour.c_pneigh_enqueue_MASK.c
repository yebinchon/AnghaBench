#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {unsigned long qlen; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {unsigned long expires; } ;
struct neigh_table {TYPE_3__ proxy_queue; TYPE_1__ proxy_timer; } ;
struct neigh_parms {int dummy; } ;
struct TYPE_7__ {unsigned long sched_next; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCALLY_ENQUEUED ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 unsigned long FUNC1 (struct neigh_parms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROXY_DELAY ; 
 int /*<<< orphan*/  PROXY_QLEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned long) ; 
 unsigned long FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (unsigned long,unsigned long) ; 

void FUNC12(struct neigh_table *tbl, struct neigh_parms *p,
		    struct sk_buff *skb)
{
	unsigned long now = jiffies;

	unsigned long sched_next = now + (FUNC7() %
					  FUNC1(p, PROXY_DELAY));

	if (tbl->proxy_queue.qlen > FUNC1(p, PROXY_QLEN)) {
		FUNC5(skb);
		return;
	}

	FUNC0(skb)->sched_next = sched_next;
	FUNC0(skb)->flags |= LOCALLY_ENQUEUED;

	FUNC9(&tbl->proxy_queue.lock);
	if (FUNC3(&tbl->proxy_timer)) {
		if (FUNC11(tbl->proxy_timer.expires, sched_next))
			sched_next = tbl->proxy_timer.expires;
	}
	FUNC8(skb);
	FUNC4(skb->dev);
	FUNC2(&tbl->proxy_queue, skb);
	FUNC6(&tbl->proxy_timer, sched_next);
	FUNC10(&tbl->proxy_queue.lock);
}