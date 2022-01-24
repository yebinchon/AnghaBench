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
struct workqueue_struct {int dummy; } ;
struct delayed_work {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue_struct*,struct delayed_work*,unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,unsigned long*) ; 
 scalar_t__ FUNC4 (int) ; 

bool FUNC5(int cpu, struct workqueue_struct *wq,
			 struct delayed_work *dwork, unsigned long delay)
{
	unsigned long flags;
	int ret;

	do {
		ret = FUNC3(&dwork->work, true, &flags);
	} while (FUNC4(ret == -EAGAIN));

	if (FUNC1(ret >= 0)) {
		FUNC0(cpu, wq, dwork, delay);
		FUNC2(flags);
	}

	/* -ENOENT from try_to_grab_pending() becomes %true */
	return ret;
}