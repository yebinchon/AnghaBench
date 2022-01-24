#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sigpending {int /*<<< orphan*/  signal; int /*<<< orphan*/  list; } ;
struct task_struct {struct sigpending pending; TYPE_1__* signal; } ;
struct TYPE_4__ {int si_signo; scalar_t__ si_code; scalar_t__ si_overrun; } ;
struct sigqueue {int flags; TYPE_2__ info; int /*<<< orphan*/  list; } ;
struct pid {int dummy; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_3__ {struct sigpending shared_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PIDTYPE_PID ; 
 int SIGQUEUE_PREALLOC ; 
 scalar_t__ SI_TIMER ; 
 int TRACE_SIGNAL_ALREADY_PENDING ; 
 int TRACE_SIGNAL_DELIVERED ; 
 int TRACE_SIGNAL_IGNORED ; 
 int /*<<< orphan*/  FUNC1 (int,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned long*) ; 
 struct task_struct* FUNC6 (struct pid*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_2__*,struct task_struct*,int,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*,unsigned long*) ; 

int FUNC15(struct sigqueue *q, struct pid *pid, enum pid_type type)
{
	int sig = q->info.si_signo;
	struct sigpending *pending;
	struct task_struct *t;
	unsigned long flags;
	int ret, result;

	FUNC0(!(q->flags & SIGQUEUE_PREALLOC));

	ret = -1;
	FUNC8();
	t = FUNC6(pid, type);
	if (!t || !FUNC2(FUNC5(t, &flags)))
		goto ret;

	ret = 1; /* the signal is ignored */
	result = TRACE_SIGNAL_IGNORED;
	if (!FUNC7(sig, t, false))
		goto out;

	ret = 0;
	if (FUNC13(!FUNC4(&q->list))) {
		/*
		 * If an SI_TIMER entry is already queue just increment
		 * the overrun count.
		 */
		FUNC0(q->info.si_code != SI_TIMER);
		q->info.si_overrun++;
		result = TRACE_SIGNAL_ALREADY_PENDING;
		goto out;
	}
	q->info.si_overrun = 0;

	FUNC11(t, sig);
	pending = (type != PIDTYPE_PID) ? &t->signal->shared_pending : &t->pending;
	FUNC3(&q->list, &pending->list);
	FUNC10(&pending->signal, sig);
	FUNC1(sig, t, type);
	result = TRACE_SIGNAL_DELIVERED;
out:
	FUNC12(sig, &q->info, t, type != PIDTYPE_PID, result);
	FUNC14(t, &flags);
ret:
	FUNC9();
	return ret;
}