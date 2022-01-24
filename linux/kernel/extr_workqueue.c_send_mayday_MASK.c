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
struct workqueue_struct {TYPE_1__* rescuer; int /*<<< orphan*/  maydays; } ;
struct work_struct {int dummy; } ;
struct pool_workqueue {int /*<<< orphan*/  mayday_node; struct workqueue_struct* wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pool_workqueue*) ; 
 struct pool_workqueue* FUNC1 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq_mayday_lock ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	struct pool_workqueue *pwq = FUNC1(work);
	struct workqueue_struct *wq = pwq->wq;

	FUNC4(&wq_mayday_lock);

	if (!wq->rescuer)
		return;

	/* mayday mayday mayday */
	if (FUNC3(&pwq->mayday_node)) {
		/*
		 * If @pwq is for an unbound wq, its base ref may be put at
		 * any time due to an attribute change.  Pin @pwq until the
		 * rescuer is done with it.
		 */
		FUNC0(pwq);
		FUNC2(&pwq->mayday_node, &wq->maydays);
		FUNC5(wq->rescuer->task);
	}
}