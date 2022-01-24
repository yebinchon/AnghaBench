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
typedef  int u64 ;
struct perf_sample {int /*<<< orphan*/  transaction; int /*<<< orphan*/  data_src; int /*<<< orphan*/  weight; int /*<<< orphan*/  period; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  id; int /*<<< orphan*/  pid; int /*<<< orphan*/  tid; int /*<<< orphan*/  ip; } ;
struct TYPE_3__ {int sample_type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct ctf_writer {int dummy; } ;
struct bt_ctf_event {int dummy; } ;

/* Variables and functions */
 int PERF_SAMPLE_DATA_SRC ; 
 int PERF_SAMPLE_ID ; 
 int PERF_SAMPLE_IDENTIFIER ; 
 int PERF_SAMPLE_IP ; 
 int PERF_SAMPLE_PERIOD ; 
 int PERF_SAMPLE_STREAM_ID ; 
 int PERF_SAMPLE_TID ; 
 int PERF_SAMPLE_TRANSACTION ; 
 int PERF_SAMPLE_WEIGHT ; 
 int FUNC0 (struct ctf_writer*,struct bt_ctf_event*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ctf_writer*,struct bt_ctf_event*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ctf_writer*,struct bt_ctf_event*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ctf_writer *cw,
			      struct bt_ctf_event *event,
			      struct evsel *evsel,
			      struct perf_sample *sample)
{
	u64 type = evsel->core.attr.sample_type;
	int ret;

	/*
	 * missing:
	 *   PERF_SAMPLE_TIME         - not needed as we have it in
	 *                              ctf event header
	 *   PERF_SAMPLE_READ         - TODO
	 *   PERF_SAMPLE_RAW          - tracepoint fields are handled separately
	 *   PERF_SAMPLE_BRANCH_STACK - TODO
	 *   PERF_SAMPLE_REGS_USER    - TODO
	 *   PERF_SAMPLE_STACK_USER   - TODO
	 */

	if (type & PERF_SAMPLE_IP) {
		ret = FUNC2(cw, event, "perf_ip", sample->ip);
		if (ret)
			return -1;
	}

	if (type & PERF_SAMPLE_TID) {
		ret = FUNC0(cw, event, "perf_tid", sample->tid);
		if (ret)
			return -1;

		ret = FUNC0(cw, event, "perf_pid", sample->pid);
		if (ret)
			return -1;
	}

	if ((type & PERF_SAMPLE_ID) ||
	    (type & PERF_SAMPLE_IDENTIFIER)) {
		ret = FUNC1(cw, event, "perf_id", sample->id);
		if (ret)
			return -1;
	}

	if (type & PERF_SAMPLE_STREAM_ID) {
		ret = FUNC1(cw, event, "perf_stream_id", sample->stream_id);
		if (ret)
			return -1;
	}

	if (type & PERF_SAMPLE_PERIOD) {
		ret = FUNC1(cw, event, "perf_period", sample->period);
		if (ret)
			return -1;
	}

	if (type & PERF_SAMPLE_WEIGHT) {
		ret = FUNC1(cw, event, "perf_weight", sample->weight);
		if (ret)
			return -1;
	}

	if (type & PERF_SAMPLE_DATA_SRC) {
		ret = FUNC1(cw, event, "perf_data_src",
				sample->data_src);
		if (ret)
			return -1;
	}

	if (type & PERF_SAMPLE_TRANSACTION) {
		ret = FUNC1(cw, event, "perf_transaction",
				sample->transaction);
		if (ret)
			return -1;
	}

	return 0;
}