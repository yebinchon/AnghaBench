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
struct intel_pt_queue {int next_tid; size_t queue_nr; int /*<<< orphan*/  cpu; } ;
struct TYPE_2__ {struct auxtrace_queue* queue_array; } ;
struct intel_pt {TYPE_1__ queues; int /*<<< orphan*/  machine; } ;
struct auxtrace_queue {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_pt*,struct auxtrace_queue*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct intel_pt *pt, struct intel_pt_queue *ptq)
{
	struct auxtrace_queue *queue;
	pid_t tid = ptq->next_tid;
	int err;

	if (tid == -1)
		return 0;

	FUNC0("switch: cpu %d tid %d\n", ptq->cpu, tid);

	err = FUNC2(pt->machine, ptq->cpu, -1, tid);

	queue = &pt->queues.queue_array[ptq->queue_nr];
	FUNC1(pt, queue);

	ptq->next_tid = -1;

	return err;
}