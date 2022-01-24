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
struct tc_prio_qopt {int bands; int* priomap; } ;
struct prio_sched_data {int bands; struct Qdisc** queues; int /*<<< orphan*/  prio2band; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int TCQ_PRIO_BANDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int TC_PRIO_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 struct tc_prio_qopt* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct tc_prio_qopt*) ; 
 struct Qdisc* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,int) ; 
 struct prio_sched_data* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC12(struct Qdisc *sch, struct nlattr *opt,
		     struct netlink_ext_ack *extack)
{
	struct prio_sched_data *q = FUNC7(sch);
	struct Qdisc *queues[TCQ_PRIO_BANDS];
	int oldbands = q->bands, i;
	struct tc_prio_qopt *qopt;

	if (FUNC3(opt) < sizeof(*qopt))
		return -EINVAL;
	qopt = FUNC2(opt);

	if (qopt->bands > TCQ_PRIO_BANDS || qopt->bands < 2)
		return -EINVAL;

	for (i = 0; i <= TC_PRIO_MAX; i++) {
		if (qopt->priomap[i] >= qopt->bands)
			return -EINVAL;
	}

	/* Before commit, make sure we can allocate all new qdiscs */
	for (i = oldbands; i < qopt->bands; i++) {
		queues[i] = FUNC5(sch->dev_queue, &pfifo_qdisc_ops,
					      FUNC0(sch->handle, i + 1),
					      extack);
		if (!queues[i]) {
			while (i > oldbands)
				FUNC8(queues[--i]);
			return -ENOMEM;
		}
	}

	FUNC4(sch, qopt);
	FUNC10(sch);
	q->bands = qopt->bands;
	FUNC1(q->prio2band, qopt->priomap, TC_PRIO_MAX+1);

	for (i = q->bands; i < oldbands; i++)
		FUNC9(q->queues[i]);

	for (i = oldbands; i < q->bands; i++) {
		q->queues[i] = queues[i];
		if (q->queues[i] != &noop_qdisc)
			FUNC6(q->queues[i], true);
	}

	FUNC11(sch);

	for (i = q->bands; i < oldbands; i++)
		FUNC8(q->queues[i]);
	return 0;
}