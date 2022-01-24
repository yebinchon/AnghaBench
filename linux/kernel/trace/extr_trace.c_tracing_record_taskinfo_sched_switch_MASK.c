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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int TRACE_RECORD_CMDLINE ; 
 int TRACE_RECORD_TGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  trace_taskinfo_save ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct task_struct *prev,
					  struct task_struct *next, int flags)
{
	bool done;

	if (FUNC3(flags))
		return;

	/*
	 * Record as much task information as possible. If some fail, continue
	 * to try to record the others.
	 */
	done  = !(flags & TRACE_RECORD_CMDLINE) || FUNC1(prev);
	done &= !(flags & TRACE_RECORD_CMDLINE) || FUNC1(next);
	done &= !(flags & TRACE_RECORD_TGID) || FUNC2(prev);
	done &= !(flags & TRACE_RECORD_TGID) || FUNC2(next);

	/* If recording any information failed, retry again soon. */
	if (!done)
		return;

	FUNC0(trace_taskinfo_save, false);
}