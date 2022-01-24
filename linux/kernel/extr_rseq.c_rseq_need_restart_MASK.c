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
typedef  int u32 ;
struct task_struct {int rseq_event_mask; TYPE_1__* rseq; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL ; 
 int RSEQ_CS_PREEMPT_MIGRATE_FLAGS ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct task_struct *t, u32 cs_flags)
{
	u32 flags, event_mask;
	int ret;

	/* Get thread flags. */
	ret = FUNC0(flags, &t->rseq->flags);
	if (ret)
		return ret;

	/* Take critical section flags into account. */
	flags |= cs_flags;

	/*
	 * Restart on signal can only be inhibited when restart on
	 * preempt and restart on migrate are inhibited too. Otherwise,
	 * a preempted signal handler could fail to restart the prior
	 * execution context on sigreturn.
	 */
	if (FUNC3((flags & RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL) &&
		     (flags & RSEQ_CS_PREEMPT_MIGRATE_FLAGS) !=
		     RSEQ_CS_PREEMPT_MIGRATE_FLAGS))
		return -EINVAL;

	/*
	 * Load and clear event mask atomically with respect to
	 * scheduler preemption.
	 */
	FUNC1();
	event_mask = t->rseq_event_mask;
	t->rseq_event_mask = 0;
	FUNC2();

	return !!(event_mask & ~flags);
}