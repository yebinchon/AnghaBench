#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_pt_queue {int tid; TYPE_1__* thread; int /*<<< orphan*/  cpu; int /*<<< orphan*/  pid; } ;
struct intel_pt {int /*<<< orphan*/  machine; scalar_t__ have_sched_switch; } ;
struct auxtrace_queue {int tid; int cpu; struct intel_pt_queue* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu; int /*<<< orphan*/  pid_; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct intel_pt *pt,
				     struct auxtrace_queue *queue)
{
	struct intel_pt_queue *ptq = queue->priv;

	if (queue->tid == -1 || pt->have_sched_switch) {
		ptq->tid = FUNC1(pt->machine, ptq->cpu);
		FUNC2(ptq->thread);
	}

	if (!ptq->thread && ptq->tid != -1)
		ptq->thread = FUNC0(pt->machine, -1, ptq->tid);

	if (ptq->thread) {
		ptq->pid = ptq->thread->pid_;
		if (queue->cpu == -1)
			ptq->cpu = ptq->thread->cpu;
	}
}