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
struct etf_sched_data {int /*<<< orphan*/  delta; scalar_t__ deadline_mode; int /*<<< orphan*/  (* get_time ) () ;} ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct Qdisc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct etf_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*,struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct Qdisc *sch)
{
	struct etf_sched_data *q = FUNC4(sch);
	struct sk_buff *skb;
	ktime_t now, next;

	skb = FUNC0(sch);
	if (!skb)
		return NULL;

	now = q->get_time();

	/* Drop if packet has expired while in queue. */
	if (FUNC2(skb->tstamp, now)) {
		FUNC7(sch, skb, now);
		skb = NULL;
		goto out;
	}

	/* When in deadline mode, dequeue as soon as possible and change the
	 * txtime from deadline to (now + delta).
	 */
	if (q->deadline_mode) {
		FUNC8(sch, skb);
		skb->tstamp = now;
		goto out;
	}

	next = FUNC3(skb->tstamp, q->delta);

	/* Dequeue only if now is within the [txtime - delta, txtime] range. */
	if (FUNC1(now, next))
		FUNC8(sch, skb);
	else
		skb = NULL;

out:
	/* Now we may need to re-arm the qdisc watchdog for the next packet. */
	FUNC5(sch);

	return skb;
}