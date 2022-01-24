#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct htb_sched {TYPE_4__* hlevel; int /*<<< orphan*/  clhash; } ;
struct TYPE_6__ {int /*<<< orphan*/  q; } ;
struct htb_class {size_t level; scalar_t__ cmode; int /*<<< orphan*/  pq_node; scalar_t__ prio_activity; TYPE_3__* parent; int /*<<< orphan*/  common; TYPE_2__ leaf; scalar_t__ filter_cnt; scalar_t__ children; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;
struct TYPE_8__ {int /*<<< orphan*/  wait_pq; } ;
struct TYPE_5__ {int /*<<< orphan*/  classid; } ;
struct TYPE_7__ {int /*<<< orphan*/  children; TYPE_1__ common; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ HTB_CAN_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct htb_sched*,struct htb_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,struct htb_class*) ; 
 scalar_t__ FUNC2 (struct htb_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct htb_sched*,struct htb_class*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct Qdisc* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct htb_sched* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, unsigned long arg)
{
	struct htb_sched *q = FUNC7(sch);
	struct htb_class *cl = (struct htb_class *)arg;
	struct Qdisc *new_q = NULL;
	int last_child = 0;

	/* TODO: why don't allow to delete subtree ? references ? does
	 * tc subsys guarantee us that in htb_destroy it holds no class
	 * refs so that we can remove children safely there ?
	 */
	if (cl->children || cl->filter_cnt)
		return -EBUSY;

	if (!cl->level && FUNC2(cl)) {
		new_q = FUNC6(sch->dev_queue, &pfifo_qdisc_ops,
					  cl->parent->common.classid,
					  NULL);
		last_child = 1;
	}

	FUNC9(sch);

	if (!cl->level)
		FUNC8(cl->leaf.q);

	/* delete from hash and active; remainder in destroy_class */
	FUNC5(&q->clhash, &cl->common);
	if (cl->parent)
		cl->parent->children--;

	if (cl->prio_activity)
		FUNC0(q, cl);

	if (cl->cmode != HTB_CAN_SEND)
		FUNC4(&cl->pq_node,
				  &q->hlevel[cl->level].wait_pq);

	if (last_child)
		FUNC3(q, cl, new_q);

	FUNC10(sch);

	FUNC1(sch, cl);
	return 0;
}