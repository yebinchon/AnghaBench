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
struct task_struct {int jobctl; struct signal_struct* signal; } ;
struct signal_struct {scalar_t__ group_stop_count; int flags; } ;

/* Variables and functions */
 int JOBCTL_STOP_CONSUME ; 
 int JOBCTL_STOP_PENDING ; 
 int SIGNAL_STOP_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct signal_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int) ; 

__attribute__((used)) static bool FUNC3(struct task_struct *task)
{
	struct signal_struct *sig = task->signal;
	bool consume = task->jobctl & JOBCTL_STOP_CONSUME;

	FUNC0(!(task->jobctl & JOBCTL_STOP_PENDING));

	FUNC2(task, JOBCTL_STOP_PENDING);

	if (!consume)
		return false;

	if (!FUNC0(sig->group_stop_count == 0))
		sig->group_stop_count--;

	/*
	 * Tell the caller to notify completion iff we are entering into a
	 * fresh group stop.  Read comment in do_signal_stop() for details.
	 */
	if (!sig->group_stop_count && !(sig->flags & SIGNAL_STOP_STOPPED)) {
		FUNC1(sig, SIGNAL_STOP_STOPPED);
		return true;
	}
	return false;
}