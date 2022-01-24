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
struct worker {int flags; scalar_t__ sleeping; TYPE_1__* pool; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_running; } ;

/* Variables and functions */
 int WORKER_NOT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct worker* FUNC1 (struct task_struct*) ; 

void FUNC2(struct task_struct *task)
{
	struct worker *worker = FUNC1(task);

	if (!worker->sleeping)
		return;
	if (!(worker->flags & WORKER_NOT_RUNNING))
		FUNC0(&worker->pool->nr_running);
	worker->sleeping = 0;
}