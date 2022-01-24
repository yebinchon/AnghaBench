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
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int ecn; void* mtu; } ;
struct fq_codel_sched_data {int flows_cnt; int memory_limit; int drop_batch_size; struct fq_codel_flow* flows; void* backlogs; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  block; TYPE_1__ cparams; int /*<<< orphan*/  cstats; int /*<<< orphan*/  old_flows; int /*<<< orphan*/  new_flows; void* quantum; } ;
struct fq_codel_flow {int /*<<< orphan*/  cvars; int /*<<< orphan*/  flowchain; } ;
struct Qdisc {int limit; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TCQ_F_CAN_BYPASS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fq_codel_flow*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 struct fq_codel_sched_data* FUNC9 (struct Qdisc*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, struct nlattr *opt,
			 struct netlink_ext_ack *extack)
{
	struct fq_codel_sched_data *q = FUNC9(sch);
	int i;
	int err;

	sch->limit = 10*1024;
	q->flows_cnt = 1024;
	q->memory_limit = 32 << 20; /* 32 MBytes */
	q->drop_batch_size = 64;
	q->quantum = FUNC7(FUNC8(sch));
	FUNC0(&q->new_flows);
	FUNC0(&q->old_flows);
	FUNC1(&q->cparams);
	FUNC2(&q->cstats);
	q->cparams.ecn = true;
	q->cparams.mtu = FUNC7(FUNC8(sch));

	if (opt) {
		err = FUNC4(sch, opt, extack);
		if (err)
			goto init_failure;
	}

	err = FUNC10(&q->block, &q->filter_list, sch, extack);
	if (err)
		goto init_failure;

	if (!q->flows) {
		q->flows = FUNC5(q->flows_cnt,
				    sizeof(struct fq_codel_flow),
				    GFP_KERNEL);
		if (!q->flows) {
			err = -ENOMEM;
			goto init_failure;
		}
		q->backlogs = FUNC5(q->flows_cnt, sizeof(u32), GFP_KERNEL);
		if (!q->backlogs) {
			err = -ENOMEM;
			goto alloc_failure;
		}
		for (i = 0; i < q->flows_cnt; i++) {
			struct fq_codel_flow *flow = q->flows + i;

			FUNC0(&flow->flowchain);
			FUNC3(&flow->cvars);
		}
	}
	if (sch->limit >= 1)
		sch->flags |= TCQ_F_CAN_BYPASS;
	else
		sch->flags &= ~TCQ_F_CAN_BYPASS;
	return 0;

alloc_failure:
	FUNC6(q->flows);
	q->flows = NULL;
init_failure:
	q->flows_cnt = 0;
	return err;
}