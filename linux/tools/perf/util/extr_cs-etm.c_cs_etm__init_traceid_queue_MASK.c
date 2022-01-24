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
typedef  int /*<<< orphan*/  u8 ;
struct cs_etm_traceid_queue {int pid; void* packet; void* prev_packet; void* last_branch; void* last_branch_rb; int /*<<< orphan*/  event_buf; int /*<<< orphan*/  trace_chan_id; int /*<<< orphan*/  tid; int /*<<< orphan*/  packet_queue; } ;
struct cs_etm_queue {size_t queue_nr; struct cs_etm_auxtrace* etm; } ;
struct cs_etm_packet {int dummy; } ;
struct TYPE_4__ {int last_branch_sz; scalar_t__ last_branch; } ;
struct TYPE_3__ {struct auxtrace_queue* queue_array; } ;
struct cs_etm_auxtrace {TYPE_2__ synth_opts; TYPE_1__ queues; } ;
struct branch_stack {int dummy; } ;
struct branch_entry {int dummy; } ;
struct auxtrace_queue {int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PERF_SAMPLE_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 

__attribute__((used)) static int FUNC4(struct cs_etm_queue *etmq,
				      struct cs_etm_traceid_queue *tidq,
				      u8 trace_chan_id)
{
	int rc = -ENOMEM;
	struct auxtrace_queue *queue;
	struct cs_etm_auxtrace *etm = etmq->etm;

	FUNC0(&tidq->packet_queue);

	queue = &etmq->etm->queues.queue_array[etmq->queue_nr];
	tidq->tid = queue->tid;
	tidq->pid = -1;
	tidq->trace_chan_id = trace_chan_id;

	tidq->packet = FUNC2(sizeof(struct cs_etm_packet));
	if (!tidq->packet)
		goto out;

	tidq->prev_packet = FUNC2(sizeof(struct cs_etm_packet));
	if (!tidq->prev_packet)
		goto out_free;

	if (etm->synth_opts.last_branch) {
		size_t sz = sizeof(struct branch_stack);

		sz += etm->synth_opts.last_branch_sz *
		      sizeof(struct branch_entry);
		tidq->last_branch = FUNC2(sz);
		if (!tidq->last_branch)
			goto out_free;
		tidq->last_branch_rb = FUNC2(sz);
		if (!tidq->last_branch_rb)
			goto out_free;
	}

	tidq->event_buf = FUNC1(PERF_SAMPLE_MAX_SIZE);
	if (!tidq->event_buf)
		goto out_free;

	return 0;

out_free:
	FUNC3(&tidq->last_branch_rb);
	FUNC3(&tidq->last_branch);
	FUNC3(&tidq->prev_packet);
	FUNC3(&tidq->packet);
out:
	return rc;
}