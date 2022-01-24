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
struct task_struct {int dummy; } ;
struct sched_param {int sched_priority; } ;
struct irqaction {int /*<<< orphan*/  thread_flags; int /*<<< orphan*/  thread; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQTF_AFFINITY ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int MAX_USER_RT_PRIO ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  irq_thread ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,struct irqaction*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct irqaction *new, unsigned int irq, bool secondary)
{
	struct task_struct *t;
	struct sched_param param = {
		.sched_priority = MAX_USER_RT_PRIO/2,
	};

	if (!secondary) {
		t = FUNC3(irq_thread, new, "irq/%d-%s", irq,
				   new->name);
	} else {
		t = FUNC3(irq_thread, new, "irq/%d-s-%s", irq,
				   new->name);
		param.sched_priority -= 1;
	}

	if (FUNC0(t))
		return FUNC1(t);

	FUNC4(t, SCHED_FIFO, &param);

	/*
	 * We keep the reference to the task struct even if
	 * the thread dies to avoid that the interrupt code
	 * references an already freed task_struct.
	 */
	new->thread = FUNC2(t);
	/*
	 * Tell the thread to set its affinity. This is
	 * important for shared interrupt handlers as we do
	 * not invoke setup_affinity() for the secondary
	 * handlers as everything is already set up. Even for
	 * interrupts marked with IRQF_NO_BALANCE this is
	 * correct as we want the thread to move to the cpu(s)
	 * on which the requesting code placed the interrupt.
	 */
	FUNC5(IRQTF_AFFINITY, &new->thread_flags);
	return 0;
}