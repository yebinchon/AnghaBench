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
struct work_struct {int dummy; } ;
struct pool_workqueue {int /*<<< orphan*/  nr_active; TYPE_1__* pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  worklist; int /*<<< orphan*/  watchdog_ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_STRUCT_DELAYED_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pool_workqueue* FUNC1 (struct work_struct*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct work_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct work_struct*) ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	struct pool_workqueue *pwq = FUNC1(work);

	FUNC4(work);
	if (FUNC2(&pwq->pool->worklist))
		pwq->pool->watchdog_ts = jiffies;
	FUNC3(work, &pwq->pool->worklist, NULL);
	FUNC0(WORK_STRUCT_DELAYED_BIT, FUNC5(work));
	pwq->nr_active++;
}