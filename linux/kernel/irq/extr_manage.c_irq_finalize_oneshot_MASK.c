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
struct irqaction {scalar_t__ handler; int /*<<< orphan*/  thread_mask; int /*<<< orphan*/  thread_flags; } ;
struct irq_desc {int istate; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  threads_oneshot; } ;

/* Variables and functions */
 int IRQS_ONESHOT ; 
 int /*<<< orphan*/  IRQTF_RUNTHREAD ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ irq_forced_secondary_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC11(struct irq_desc *desc,
				 struct irqaction *action)
{
	if (!(desc->istate & IRQS_ONESHOT) ||
	    action->handler == irq_forced_secondary_handler)
		return;
again:
	FUNC0(desc);
	FUNC6(&desc->lock);

	/*
	 * Implausible though it may be we need to protect us against
	 * the following scenario:
	 *
	 * The thread is faster done than the hard interrupt handler
	 * on the other CPU. If we unmask the irq line then the
	 * interrupt can come in again and masks the line, leaves due
	 * to IRQS_INPROGRESS and the irq line is masked forever.
	 *
	 * This also serializes the state of shared oneshot handlers
	 * versus "desc->threads_onehsot |= action->thread_mask;" in
	 * irq_wake_thread(). See the comment there which explains the
	 * serialization.
	 */
	if (FUNC9(FUNC4(&desc->irq_data))) {
		FUNC7(&desc->lock);
		FUNC1(desc);
		FUNC2();
		goto again;
	}

	/*
	 * Now check again, whether the thread should run. Otherwise
	 * we would clear the threads_oneshot bit of this thread which
	 * was just set.
	 */
	if (FUNC8(IRQTF_RUNTHREAD, &action->thread_flags))
		goto out_unlock;

	desc->threads_oneshot &= ~action->thread_mask;

	if (!desc->threads_oneshot && !FUNC3(&desc->irq_data) &&
	    FUNC5(&desc->irq_data))
		FUNC10(desc);

out_unlock:
	FUNC7(&desc->lock);
	FUNC1(desc);
}