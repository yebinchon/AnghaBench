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
struct net_device {int dummy; } ;
struct cbs_sched_data {int /*<<< orphan*/  qdisc; int /*<<< orphan*/  cbs_list; int /*<<< orphan*/  watchdog; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct cbs_sched_data*) ; 
 int /*<<< orphan*/  cbs_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 
 struct cbs_sched_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct Qdisc *sch)
{
	struct cbs_sched_data *q = FUNC3(sch);
	struct net_device *dev = FUNC2(sch);

	/* Nothing to do if we couldn't create the underlying qdisc */
	if (!q->qdisc)
		return;

	FUNC5(&q->watchdog);
	FUNC0(dev, q);

	FUNC6(&cbs_list_lock);
	FUNC1(&q->cbs_list);
	FUNC7(&cbs_list_lock);

	FUNC4(q->qdisc);
}