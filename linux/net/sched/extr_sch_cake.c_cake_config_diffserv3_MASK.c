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
 int /*<<< orphan*/  diffserv3 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 struct cake_sched_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch)
{
/*  Simplified Diffserv structure with 3 tins.
 *		Low Priority		(CS1)
 *		Best Effort
 *		Latency Sensitive	(TOS4, VA, EF, CS6, CS7)
 */
	struct cake_sched_data *q = FUNC3(sch);
	u32 mtu = FUNC1(FUNC2(sch));
	u64 rate = q->rate_bps;
	u32 quantum = 1024;

	q->tin_cnt = 3;

	/* codepoint to class mapping */
	q->tin_index = diffserv3;
	q->tin_order = bulk_order;

	/* class characteristics */
	FUNC0(&q->tins[0], rate, mtu,
		      FUNC4(q->target), FUNC4(q->interval));
	FUNC0(&q->tins[1], rate >> 4, mtu,
		      FUNC4(q->target), FUNC4(q->interval));
	FUNC0(&q->tins[2], rate >> 2, mtu,
		      FUNC4(q->target), FUNC4(q->interval));

	/* priority weights */
	q->tins[0].tin_quantum_prio = quantum;
	q->tins[1].tin_quantum_prio = quantum >> 4;
	q->tins[2].tin_quantum_prio = quantum << 4;

	/* bandwidth-sharing weights */
	q->tins[0].tin_quantum_band = quantum;
	q->tins[1].tin_quantum_band = quantum >> 4;
	q->tins[2].tin_quantum_band = quantum >> 2;

	return 0;
}