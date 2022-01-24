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
struct cpu_stop_work {void* arg; struct cpu_stop_done* done; int /*<<< orphan*/  fn; } ;
struct cpu_stop_done {int ret; int /*<<< orphan*/  completion; } ;
typedef  int /*<<< orphan*/  cpu_stop_fn_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_stop_done*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct cpu_stop_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(unsigned int cpu, cpu_stop_fn_t fn, void *arg)
{
	struct cpu_stop_done done;
	struct cpu_stop_work work = { .fn = fn, .arg = arg, .done = &done };

	FUNC1(&done, 1);
	if (!FUNC2(cpu, &work))
		return -ENOENT;
	/*
	 * In case @cpu == smp_proccessor_id() we can avoid a sleep+wakeup
	 * cycle by doing a preemption:
	 */
	FUNC0();
	FUNC3(&done.completion);
	return done.ret;
}