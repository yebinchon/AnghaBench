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
struct TYPE_7__ {int size; int /*<<< orphan*/  misc; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
union perf_event {TYPE_3__ sample; } ;
typedef  void* u64 ;
struct perf_sample {int /*<<< orphan*/  branch_stack; int /*<<< orphan*/  cpumode; int /*<<< orphan*/  flags; int /*<<< orphan*/  cpu; void* period; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  id; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; void* ip; } ;
struct perf_event_header {int dummy; } ;
struct cs_etm_traceid_queue {int /*<<< orphan*/  last_branch; TYPE_5__* packet; int /*<<< orphan*/  trace_chan_id; TYPE_1__* prev_packet; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; union perf_event* event_buf; } ;
struct cs_etm_queue {struct cs_etm_auxtrace* etm; } ;
struct TYPE_9__ {scalar_t__ last_branch; scalar_t__ inject; } ;
struct cs_etm_auxtrace {TYPE_4__ synth_opts; int /*<<< orphan*/  session; int /*<<< orphan*/  instructions_sample_type; int /*<<< orphan*/  instructions_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  cpu; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_RECORD_SAMPLE ; 
 int /*<<< orphan*/  FUNC0 (struct cs_etm_queue*,int /*<<< orphan*/ ,TYPE_5__*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_etm_queue*,void*) ; 
 int FUNC3 (union perf_event*,struct perf_sample*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cs_etm_traceid_queue*) ; 
 int FUNC5 (int /*<<< orphan*/ ,union perf_event*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(struct cs_etm_queue *etmq,
					    struct cs_etm_traceid_queue *tidq,
					    u64 addr, u64 period)
{
	int ret = 0;
	struct cs_etm_auxtrace *etm = etmq->etm;
	union perf_event *event = tidq->event_buf;
	struct perf_sample sample = {.ip = 0,};

	event->sample.header.type = PERF_RECORD_SAMPLE;
	event->sample.header.misc = FUNC2(etmq, addr);
	event->sample.header.size = sizeof(struct perf_event_header);

	sample.ip = addr;
	sample.pid = tidq->pid;
	sample.tid = tidq->tid;
	sample.id = etmq->etm->instructions_id;
	sample.stream_id = etmq->etm->instructions_id;
	sample.period = period;
	sample.cpu = tidq->packet->cpu;
	sample.flags = tidq->prev_packet->flags;
	sample.cpumode = event->sample.header.misc;

	FUNC0(etmq, tidq->trace_chan_id, tidq->packet, &sample);

	if (etm->synth_opts.last_branch) {
		FUNC1(etmq, tidq);
		sample.branch_stack = tidq->last_branch;
	}

	if (etm->synth_opts.inject) {
		ret = FUNC3(event, &sample,
					   etm->instructions_sample_type);
		if (ret)
			return ret;
	}

	ret = FUNC5(etm->session, event, &sample);

	if (ret)
		FUNC6(
			"CS ETM Trace: failed to deliver instruction event, error %d\n",
			ret);

	if (etm->synth_opts.last_branch)
		FUNC4(tidq);

	return ret;
}