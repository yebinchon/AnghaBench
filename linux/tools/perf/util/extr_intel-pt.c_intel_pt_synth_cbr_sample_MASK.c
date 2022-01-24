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
typedef  union perf_event {int dummy; } perf_event ;
typedef  int u32 ;
typedef  int u16 ;
struct perf_synth_intel_cbr {int cbr; scalar_t__ reserved3; void* freq; void* flags; } ;
struct perf_sample {int /*<<< orphan*/  raw_data; int /*<<< orphan*/  raw_size; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  id; int /*<<< orphan*/  ip; } ;
struct intel_pt_queue {TYPE_1__* state; struct intel_pt* pt; int /*<<< orphan*/  cbr_seen; union perf_event* event_buf; } ;
struct intel_pt {int max_non_turbo_ratio; int cbr2khz; int /*<<< orphan*/  pwr_events_sample_type; int /*<<< orphan*/  cbr_id; } ;
struct TYPE_2__ {scalar_t__ cbr_payload; int /*<<< orphan*/  cbr; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (struct intel_pt*,struct intel_pt_queue*,union perf_event*,struct perf_sample*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_pt*,struct intel_pt_queue*,union perf_event*,struct perf_sample*) ; 
 scalar_t__ FUNC3 (struct intel_pt*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_synth_intel_cbr*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_synth_intel_cbr) ; 

__attribute__((used)) static int FUNC6(struct intel_pt_queue *ptq)
{
	struct intel_pt *pt = ptq->pt;
	union perf_event *event = ptq->event_buf;
	struct perf_sample sample = { .ip = 0, };
	struct perf_synth_intel_cbr raw;
	u32 flags;

	if (FUNC3(pt))
		return 0;

	ptq->cbr_seen = ptq->state->cbr;

	FUNC2(pt, ptq, event, &sample);

	sample.id = ptq->pt->cbr_id;
	sample.stream_id = ptq->pt->cbr_id;

	flags = (u16)ptq->state->cbr_payload | (pt->max_non_turbo_ratio << 16);
	raw.flags = FUNC0(flags);
	raw.freq = FUNC0(raw.cbr * pt->cbr2khz);
	raw.reserved3 = 0;

	sample.raw_size = FUNC5(raw);
	sample.raw_data = FUNC4(&raw);

	return FUNC1(pt, ptq, event, &sample,
					    pt->pwr_events_sample_type);
}