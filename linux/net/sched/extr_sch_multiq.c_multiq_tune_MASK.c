#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tc_multiq_qopt {int bands; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct multiq_sched_data {int max_bands; int bands; struct Qdisc** queues; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;
struct TYPE_3__ {int real_num_tx_queues; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc**) ; 
 struct Qdisc** FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct tc_multiq_qopt* FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr*) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 TYPE_1__* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*,int) ; 
 struct multiq_sched_data* FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC13 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC14(struct Qdisc *sch, struct nlattr *opt,
		       struct netlink_ext_ack *extack)
{
	struct multiq_sched_data *q = FUNC9(sch);
	struct tc_multiq_qopt *qopt;
	struct Qdisc **removed;
	int i, n_removed = 0;

	if (!FUNC3(FUNC7(sch)))
		return -EOPNOTSUPP;
	if (FUNC5(opt) < sizeof(*qopt))
		return -EINVAL;

	qopt = FUNC4(opt);

	qopt->bands = FUNC7(sch)->real_num_tx_queues;

	removed = FUNC2(sizeof(*removed) * (q->max_bands - q->bands),
			  GFP_KERNEL);
	if (!removed)
		return -ENOMEM;

	FUNC12(sch);
	q->bands = qopt->bands;
	for (i = q->bands; i < q->max_bands; i++) {
		if (q->queues[i] != &noop_qdisc) {
			struct Qdisc *child = q->queues[i];

			q->queues[i] = &noop_qdisc;
			FUNC10(child);
			removed[n_removed++] = child;
		}
	}

	FUNC13(sch);

	for (i = 0; i < n_removed; i++)
		FUNC11(removed[i]);
	FUNC1(removed);

	for (i = 0; i < q->bands; i++) {
		if (q->queues[i] == &noop_qdisc) {
			struct Qdisc *child, *old;
			child = FUNC6(sch->dev_queue,
						  &pfifo_qdisc_ops,
						  FUNC0(sch->handle,
							    i + 1), extack);
			if (child) {
				FUNC12(sch);
				old = q->queues[i];
				q->queues[i] = child;
				if (child != &noop_qdisc)
					FUNC8(child, true);

				if (old != &noop_qdisc)
					FUNC10(old);
				FUNC13(sch);
				FUNC11(old);
			}
		}
	}
	return 0;
}