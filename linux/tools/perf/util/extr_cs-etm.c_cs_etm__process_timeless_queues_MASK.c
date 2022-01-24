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
struct cs_etm_traceid_queue {int tid; } ;
struct cs_etm_queue {int dummy; } ;
struct auxtrace_queues {unsigned int nr_queues; struct auxtrace_queue* queue_array; } ;
struct cs_etm_auxtrace {struct auxtrace_queues queues; } ;
struct auxtrace_queue {struct cs_etm_queue* priv; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ETM_PER_THREAD_TRACEID ; 
 struct cs_etm_traceid_queue* FUNC0 (struct cs_etm_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_etm_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_etm_auxtrace*,struct cs_etm_traceid_queue*) ; 

__attribute__((used)) static int FUNC3(struct cs_etm_auxtrace *etm,
					   pid_t tid)
{
	unsigned int i;
	struct auxtrace_queues *queues = &etm->queues;

	for (i = 0; i < queues->nr_queues; i++) {
		struct auxtrace_queue *queue = &etm->queues.queue_array[i];
		struct cs_etm_queue *etmq = queue->priv;
		struct cs_etm_traceid_queue *tidq;

		if (!etmq)
			continue;

		tidq = FUNC0(etmq,
						CS_ETM_PER_THREAD_TRACEID);

		if (!tidq)
			continue;

		if ((tid == -1) || (tidq->tid == tid)) {
			FUNC2(etm, tidq);
			FUNC1(etmq);
		}
	}

	return 0;
}