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
struct task_struct {int flags; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct irqaction {int /*<<< orphan*/  thread_flags; int /*<<< orphan*/  irq; } ;
struct irq_desc {int dummy; } ;
struct callback_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQTF_RUNTHREAD ; 
 int PF_EXITING ; 
 scalar_t__ FUNC0 (int) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*,struct irqaction*) ; 
 struct irq_desc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct irqaction* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC7(struct callback_head *unused)
{
	struct task_struct *tsk = current;
	struct irq_desc *desc;
	struct irqaction *action;

	if (FUNC0(!(current->flags & PF_EXITING)))
		return;

	action = FUNC3(tsk);

	FUNC4("exiting task \"%s\" (%d) is an active IRQ thread (irq %d)\n",
	       tsk->comm, tsk->pid, action->irq);


	desc = FUNC2(action->irq);
	/*
	 * If IRQTF_RUNTHREAD is set, we need to decrement
	 * desc->threads_active and wake possible waiters.
	 */
	if (FUNC5(IRQTF_RUNTHREAD, &action->thread_flags))
		FUNC6(desc);

	/* Prevent a stale desc->threads_oneshot */
	FUNC1(desc, action);
}