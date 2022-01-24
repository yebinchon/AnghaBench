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
typedef  scalar_t__ u64 ;
struct thread_stack {scalar_t__ trace_nr; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,struct thread_stack*) ; 
 struct thread_stack* FUNC1 (struct thread*,int) ; 

void FUNC2(struct thread *thread, int cpu, u64 trace_nr)
{
	struct thread_stack *ts = FUNC1(thread, cpu);

	if (!ts)
		return;

	if (trace_nr != ts->trace_nr) {
		if (ts->trace_nr)
			FUNC0(thread, ts);
		ts->trace_nr = trace_nr;
	}
}