#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tc_hfsc_qopt {int /*<<< orphan*/  defcls; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  classid; } ;
struct TYPE_3__ {TYPE_2__ cl_common; void* cf_tree; void* vt_tree; int /*<<< orphan*/  children; int /*<<< orphan*/ * qdisc; struct hfsc_sched* sched; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  block; } ;
struct hfsc_sched {int /*<<< orphan*/  clhash; TYPE_1__ root; void* eligible; int /*<<< orphan*/  defcls; int /*<<< orphan*/  watchdog; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT ; 
 struct tc_hfsc_qopt* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct hfsc_sched* FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct Qdisc*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int
FUNC11(struct Qdisc *sch, struct nlattr *opt,
		struct netlink_ext_ack *extack)
{
	struct hfsc_sched *q = FUNC8(sch);
	struct tc_hfsc_qopt *qopt;
	int err;

	FUNC9(&q->watchdog, sch);

	if (!opt || FUNC2(opt) < sizeof(*qopt))
		return -EINVAL;
	qopt = FUNC1(opt);

	q->defcls = qopt->defcls;
	err = FUNC4(&q->clhash);
	if (err < 0)
		return err;
	q->eligible = RB_ROOT;

	err = FUNC10(&q->root.block, &q->root.filter_list, sch, extack);
	if (err)
		return err;

	q->root.cl_common.classid = sch->handle;
	q->root.sched   = q;
	q->root.qdisc = FUNC6(sch->dev_queue, &pfifo_qdisc_ops,
					  sch->handle, NULL);
	if (q->root.qdisc == NULL)
		q->root.qdisc = &noop_qdisc;
	else
		FUNC7(q->root.qdisc, true);
	FUNC0(&q->root.children);
	q->root.vt_tree = RB_ROOT;
	q->root.cf_tree = RB_ROOT;

	FUNC5(&q->clhash, &q->root.cl_common);
	FUNC3(sch, &q->clhash);

	return 0;
}