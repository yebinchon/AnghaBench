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
struct task_struct {int pid; } ;
struct jffs2_sb_info {int /*<<< orphan*/  gc_thread_start; int /*<<< orphan*/  gc_thread_exit; TYPE_1__* mtd; int /*<<< orphan*/  gc_task; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  jffs2_garbage_collect_thread ; 
 struct task_struct* FUNC6 (int /*<<< orphan*/ ,struct jffs2_sb_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct jffs2_sb_info *c)
{
	struct task_struct *tsk;
	int ret = 0;

	FUNC0(c->gc_task);

	FUNC4(&c->gc_thread_start);
	FUNC4(&c->gc_thread_exit);

	tsk = FUNC6(jffs2_garbage_collect_thread, c, "jffs2_gcd_mtd%d", c->mtd->index);
	if (FUNC1(tsk)) {
		FUNC7("fork failed for JFFS2 garbage collect thread: %ld\n",
			-FUNC2(tsk));
		FUNC3(&c->gc_thread_exit);
		ret = FUNC2(tsk);
	} else {
		/* Wait for it... */
		FUNC5(1, "Garbage collect thread is pid %d\n", tsk->pid);
		FUNC8(&c->gc_thread_start);
		ret = tsk->pid;
	}

	return ret;
}