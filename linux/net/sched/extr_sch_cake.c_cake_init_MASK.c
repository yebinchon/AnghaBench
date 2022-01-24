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
typedef  size_t u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct cake_tin_data {size_t* overflow_idx; struct cake_flow* flows; scalar_t__ decaying_flow_count; scalar_t__ bulk_flow_count; scalar_t__ sparse_flow_count; int /*<<< orphan*/  decaying_flows; int /*<<< orphan*/  old_flows; int /*<<< orphan*/  new_flows; } ;
struct cake_sched_data {int interval; int target; int /*<<< orphan*/  min_adjlen; int /*<<< orphan*/  min_netlen; scalar_t__ rate_bps; scalar_t__ avg_peak_bandwidth; TYPE_1__* overflow_heap; struct cake_tin_data* tins; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  block; int /*<<< orphan*/  watchdog; scalar_t__ cur_flow; scalar_t__ cur_tin; int /*<<< orphan*/  rate_flags; int /*<<< orphan*/  flow_mode; int /*<<< orphan*/  tin_mode; } ;
struct cake_flow {int /*<<< orphan*/  cvars; int /*<<< orphan*/  flowchain; } ;
struct Qdisc {int limit; } ;
struct TYPE_2__ {int t; int b; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAKE_DIFFSERV_DIFFSERV3 ; 
 int /*<<< orphan*/  CAKE_FLAG_SPLIT_GSO ; 
 int /*<<< orphan*/  CAKE_FLOW_TRIPLE ; 
 int CAKE_MAX_TINS ; 
 int CAKE_QUEUES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cake_tin_data* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 struct cake_sched_data* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct Qdisc*) ; 
 int* quantum_div ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC9(struct Qdisc *sch, struct nlattr *opt,
		     struct netlink_ext_ack *extack)
{
	struct cake_sched_data *q = FUNC6(sch);
	int i, j, err;

	sch->limit = 10240;
	q->tin_mode = CAKE_DIFFSERV_DIFFSERV3;
	q->flow_mode  = CAKE_FLOW_TRIPLE;

	q->rate_bps = 0; /* unlimited by default */

	q->interval = 100000; /* 100ms default */
	q->target   =   5000; /* 5ms: codel RFC argues
			       * for 5 to 10% of interval
			       */
	q->rate_flags |= CAKE_FLAG_SPLIT_GSO;
	q->cur_tin = 0;
	q->cur_flow  = 0;

	FUNC7(&q->watchdog, sch);

	if (opt) {
		int err = FUNC1(sch, opt, extack);

		if (err)
			return err;
	}

	err = FUNC8(&q->block, &q->filter_list, sch, extack);
	if (err)
		return err;

	quantum_div[0] = ~0;
	for (i = 1; i <= CAKE_QUEUES; i++)
		quantum_div[i] = 65535 / i;

	q->tins = FUNC5(CAKE_MAX_TINS, sizeof(struct cake_tin_data),
			   GFP_KERNEL);
	if (!q->tins)
		goto nomem;

	for (i = 0; i < CAKE_MAX_TINS; i++) {
		struct cake_tin_data *b = q->tins + i;

		FUNC0(&b->new_flows);
		FUNC0(&b->old_flows);
		FUNC0(&b->decaying_flows);
		b->sparse_flow_count = 0;
		b->bulk_flow_count = 0;
		b->decaying_flow_count = 0;

		for (j = 0; j < CAKE_QUEUES; j++) {
			struct cake_flow *flow = b->flows + j;
			u32 k = j * CAKE_MAX_TINS + i;

			FUNC0(&flow->flowchain);
			FUNC4(&flow->cvars);

			q->overflow_heap[k].t = i;
			q->overflow_heap[k].b = j;
			b->overflow_idx[j] = k;
		}
	}

	FUNC3(sch);
	q->avg_peak_bandwidth = q->rate_bps;
	q->min_netlen = ~0;
	q->min_adjlen = ~0;
	return 0;

nomem:
	FUNC2(sch);
	return -ENOMEM;
}