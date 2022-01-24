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
typedef  int u64 ;
typedef  int u32 ;
struct cake_sched_data {int rate_bps; int tin_cnt; TYPE_1__* tins; int /*<<< orphan*/  interval; int /*<<< orphan*/  target; int /*<<< orphan*/  tin_order; int /*<<< orphan*/  tin_index; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int tin_quantum_prio; int tin_quantum_band; } ;

/* Variables and functions */
 int /*<<< orphan*/  bulk_order ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diffserv4 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 struct cake_sched_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch)
{
/*  Further pruned list of traffic classes for four-class system:
 *
 *	    Latency Sensitive  (CS7, CS6, EF, VA, CS5, CS4)
 *	    Streaming Media    (AF4x, AF3x, CS3, AF2x, TOS4, CS2, TOS1)
 *	    Best Effort        (CS0, AF1x, TOS2, and those not specified)
 *	    Background Traffic (CS1)
 *
 *		Total 4 traffic classes.
 */

	struct cake_sched_data *q = FUNC3(sch);
	u32 mtu = FUNC1(FUNC2(sch));
	u64 rate = q->rate_bps;
	u32 quantum = 1024;

	q->tin_cnt = 4;

	/* codepoint to class mapping */
	q->tin_index = diffserv4;
	q->tin_order = bulk_order;

	/* class characteristics */
	FUNC0(&q->tins[0], rate, mtu,
		      FUNC4(q->target), FUNC4(q->interval));
	FUNC0(&q->tins[1], rate >> 4, mtu,
		      FUNC4(q->target), FUNC4(q->interval));
	FUNC0(&q->tins[2], rate >> 1, mtu,
		      FUNC4(q->target), FUNC4(q->interval));
	FUNC0(&q->tins[3], rate >> 2, mtu,
		      FUNC4(q->target), FUNC4(q->interval));

	/* priority weights */
	q->tins[0].tin_quantum_prio = quantum;
	q->tins[1].tin_quantum_prio = quantum >> 4;
	q->tins[2].tin_quantum_prio = quantum << 2;
	q->tins[3].tin_quantum_prio = quantum << 4;

	/* bandwidth-sharing weights */
	q->tins[0].tin_quantum_band = quantum;
	q->tins[1].tin_quantum_band = quantum >> 4;
	q->tins[2].tin_quantum_band = quantum >> 1;
	q->tins[3].tin_quantum_band = quantum >> 2;

	return 0;
}