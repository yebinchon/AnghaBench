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
struct atm_flow_data {scalar_t__ excess; TYPE_2__* sock; int /*<<< orphan*/  old_pop; TYPE_1__* vcc; int /*<<< orphan*/  block; int /*<<< orphan*/  q; int /*<<< orphan*/  list; scalar_t__ ref; } ;
struct atm_qdisc_data {struct atm_flow_data link; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  file; } ;
struct TYPE_3__ {int /*<<< orphan*/  pop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_flow_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct atm_qdisc_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct Qdisc *sch, unsigned long cl)
{
	struct atm_qdisc_data *p = FUNC4(sch);
	struct atm_flow_data *flow = (struct atm_flow_data *)cl;

	FUNC3("atm_tc_put(sch %p,[qdisc %p],flow %p)\n", sch, p, flow);
	if (--flow->ref)
		return;
	FUNC3("atm_tc_put: destroying\n");
	FUNC2(&flow->list);
	FUNC3("atm_tc_put: qdisc %p\n", flow->q);
	FUNC5(flow->q);
	FUNC7(flow->block);
	if (flow->sock) {
		FUNC3("atm_tc_put: f_count %ld\n",
			FUNC0(flow->sock->file));
		flow->vcc->pop = flow->old_pop;
		FUNC6(flow->sock);
	}
	if (flow->excess)
		FUNC8(sch, (unsigned long)flow->excess);
	if (flow != &p->link)
		FUNC1(flow);
	/*
	 * If flow == &p->link, the qdisc no longer works at this point and
	 * needs to be removed. (By the caller of atm_tc_put.)
	 */
}