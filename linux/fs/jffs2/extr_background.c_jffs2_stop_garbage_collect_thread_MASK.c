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
struct jffs2_sb_info {int /*<<< orphan*/  gc_thread_exit; int /*<<< orphan*/  erase_completion_lock; TYPE_1__* gc_task; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct jffs2_sb_info *c)
{
	int wait = 0;
	FUNC2(&c->erase_completion_lock);
	if (c->gc_task) {
		FUNC0(1, "Killing GC task %d\n", c->gc_task->pid);
		FUNC1(SIGKILL, c->gc_task, 1);
		wait = 1;
	}
	FUNC3(&c->erase_completion_lock);
	if (wait)
		FUNC4(&c->gc_thread_exit);
}