#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_3__* sighand; } ;
struct TYPE_6__ {int /*<<< orphan*/  siglock; TYPE_2__* action; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa_handler; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;

/* Variables and functions */
 int SIGSEGV ; 
 int /*<<< orphan*/  SIG_DFL ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(int sig)
{
	struct task_struct *p = current;

	if (sig == SIGSEGV) {
		unsigned long flags;
		FUNC1(&p->sighand->siglock, flags);
		p->sighand->action[sig - 1].sa.sa_handler = SIG_DFL;
		FUNC2(&p->sighand->siglock, flags);
	}
	FUNC0(SIGSEGV);
}