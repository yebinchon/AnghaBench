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
struct sk_buff {int /*<<< orphan*/  tstamp; } ;
struct etf_sched_data {int /*<<< orphan*/  watchdog; int /*<<< orphan*/  delta; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct etf_sched_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct Qdisc *sch)
{
	struct etf_sched_data *q = FUNC3(sch);
	struct sk_buff *skb = FUNC0(sch);
	ktime_t next;

	if (!skb) {
		FUNC4(&q->watchdog);
		return;
	}

	next = FUNC1(skb->tstamp, q->delta);
	FUNC5(&q->watchdog, FUNC2(next));
}