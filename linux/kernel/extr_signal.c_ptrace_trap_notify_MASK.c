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
struct task_struct {int ptrace; int jobctl; TYPE_1__* sighand; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int JOBCTL_LISTENING ; 
 int /*<<< orphan*/  JOBCTL_TRAP_NOTIFY ; 
 int PT_SEIZED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct task_struct *t)
{
	FUNC0(!(t->ptrace & PT_SEIZED));
	FUNC1(&t->sighand->siglock);

	FUNC3(t, JOBCTL_TRAP_NOTIFY);
	FUNC2(t, t->jobctl & JOBCTL_LISTENING);
}