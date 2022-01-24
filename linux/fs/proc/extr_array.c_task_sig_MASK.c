#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  signal; } ;
struct task_struct {int /*<<< orphan*/  blocked; TYPE_3__* signal; TYPE_1__ pending; } ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_10__ {TYPE_4__* user; } ;
struct TYPE_9__ {int /*<<< orphan*/  sigpending; } ;
struct TYPE_7__ {int /*<<< orphan*/  signal; } ;
struct TYPE_8__ {TYPE_2__ shared_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_SIGPENDING ; 
 TYPE_5__* FUNC0 (struct task_struct*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static inline void FUNC12(struct seq_file *m, struct task_struct *p)
{
	unsigned long flags;
	sigset_t pending, shpending, blocked, ignored, caught;
	int num_threads = 0;
	unsigned int qsize = 0;
	unsigned long qlim = 0;

	FUNC9(&pending);
	FUNC9(&shpending);
	FUNC9(&blocked);
	FUNC9(&ignored);
	FUNC9(&caught);

	if (FUNC4(p, &flags)) {
		pending = p->pending.signal;
		shpending = p->signal->shared_pending.signal;
		blocked = p->blocked;
		FUNC2(p, &ignored, &caught);
		num_threads = FUNC3(p);
		FUNC5();  /* FIXME: is this correct? */
		qsize = FUNC1(&FUNC0(p)->user->sigpending);
		FUNC6();
		qlim = FUNC10(p, RLIMIT_SIGPENDING);
		FUNC11(p, &flags);
	}

	FUNC8(m, "Threads:\t", num_threads);
	FUNC8(m, "\nSigQ:\t", qsize);
	FUNC8(m, "/", qlim);

	/* render them all */
	FUNC7(m, "\nSigPnd:\t", &pending);
	FUNC7(m, "ShdPnd:\t", &shpending);
	FUNC7(m, "SigBlk:\t", &blocked);
	FUNC7(m, "SigIgn:\t", &ignored);
	FUNC7(m, "SigCgt:\t", &caught);
}