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
typedef  int u64 ;
typedef  size_t u32 ;
struct cake_tin_data {void* tin_quantum_band; void* tin_quantum_prio; } ;
struct cake_sched_data {int rate_bps; int tin_cnt; int /*<<< orphan*/  interval; int /*<<< orphan*/  target; struct cake_tin_data* tins; int /*<<< orphan*/  tin_order; int /*<<< orphan*/  tin_index; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cake_tin_data*,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned int,size_t) ; 
 int /*<<< orphan*/  normal_order ; 
 int /*<<< orphan*/  precedence ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 struct cake_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  u16 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch)
{
	/* convert high-level (user visible) parameters into internal format */
	struct cake_sched_data *q = FUNC4(sch);
	u32 mtu = FUNC2(FUNC3(sch));
	u64 rate = q->rate_bps;
	u32 quantum1 = 256;
	u32 quantum2 = 256;
	u32 i;

	q->tin_cnt = 8;
	q->tin_index = precedence;
	q->tin_order = normal_order;

	for (i = 0; i < q->tin_cnt; i++) {
		struct cake_tin_data *b = &q->tins[i];

		FUNC0(b, rate, mtu, FUNC5(q->target),
			      FUNC5(q->interval));

		b->tin_quantum_prio = FUNC1(u16, 1U, quantum1);
		b->tin_quantum_band = FUNC1(u16, 1U, quantum2);

		/* calculate next class's parameters */
		rate  *= 7;
		rate >>= 3;

		quantum1  *= 3;
		quantum1 >>= 1;

		quantum2  *= 7;
		quantum2 >>= 3;
	}

	return 0;
}