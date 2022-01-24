#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_15__ ;
typedef  struct TYPE_20__   TYPE_14__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_30__ {int /*<<< orphan*/  regs; scalar_t__ abi; int /*<<< orphan*/  mask; } ;
struct TYPE_29__ {size_t size; int /*<<< orphan*/  data; } ;
struct TYPE_28__ {int /*<<< orphan*/  regs; scalar_t__ abi; int /*<<< orphan*/  mask; } ;
struct TYPE_22__ {size_t nr; } ;
struct TYPE_23__ {TYPE_1__ group; } ;
struct perf_sample {size_t raw_size; TYPE_9__ intr_regs; TYPE_8__ user_stack; TYPE_7__ user_regs; TYPE_6__* branch_stack; int /*<<< orphan*/  raw_data; TYPE_5__* callchain; TYPE_2__ read; } ;
struct TYPE_27__ {size_t nr; } ;
struct TYPE_26__ {size_t nr; } ;
struct TYPE_25__ {int /*<<< orphan*/  id; int /*<<< orphan*/  value; } ;
struct TYPE_24__ {int /*<<< orphan*/ * values; int /*<<< orphan*/  nr; } ;
struct TYPE_21__ {int /*<<< orphan*/ * entries; int /*<<< orphan*/  nr; } ;
struct TYPE_20__ {int /*<<< orphan*/ * ips; int /*<<< orphan*/  nr; } ;
struct TYPE_19__ {int /*<<< orphan*/  abi; int /*<<< orphan*/  mask; } ;
struct TYPE_18__ {TYPE_4__ one; TYPE_3__ group; int /*<<< orphan*/  time_running; int /*<<< orphan*/  time_enabled; } ;
struct TYPE_17__ {int /*<<< orphan*/  abi; int /*<<< orphan*/  mask; } ;
struct TYPE_16__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PERF_FORMAT_GROUP ; 
 int PERF_FORMAT_TOTAL_TIME_ENABLED ; 
 int PERF_FORMAT_TOTAL_TIME_RUNNING ; 
 int PERF_SAMPLE_ADDR ; 
 int PERF_SAMPLE_BRANCH_STACK ; 
 int PERF_SAMPLE_CALLCHAIN ; 
 int PERF_SAMPLE_CPU ; 
 int PERF_SAMPLE_DATA_SRC ; 
 int PERF_SAMPLE_ID ; 
 int PERF_SAMPLE_IDENTIFIER ; 
 int PERF_SAMPLE_IP ; 
 int PERF_SAMPLE_PERIOD ; 
 int PERF_SAMPLE_PHYS_ADDR ; 
 int PERF_SAMPLE_RAW ; 
 int PERF_SAMPLE_READ ; 
 int PERF_SAMPLE_REGS_INTR ; 
 int PERF_SAMPLE_REGS_USER ; 
 int PERF_SAMPLE_STACK_USER ; 
 int PERF_SAMPLE_STREAM_ID ; 
 int PERF_SAMPLE_TID ; 
 int PERF_SAMPLE_TIME ; 
 int PERF_SAMPLE_TRANSACTION ; 
 int PERF_SAMPLE_WEIGHT ; 
 int /*<<< orphan*/  addr ; 
 TYPE_15__* branch_stack ; 
 TYPE_14__* callchain ; 
 int /*<<< orphan*/  cpu ; 
 int /*<<< orphan*/  data_src ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  id ; 
 TYPE_13__ intr_regs ; 
 int /*<<< orphan*/  ip ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  period ; 
 int /*<<< orphan*/  phys_addr ; 
 int /*<<< orphan*/  pid ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  raw_size ; 
 TYPE_12__ read ; 
 int /*<<< orphan*/  stream_id ; 
 int /*<<< orphan*/  tid ; 
 int /*<<< orphan*/  time ; 
 int /*<<< orphan*/  transaction ; 
 TYPE_11__ user_regs ; 
 TYPE_10__ user_stack ; 
 int /*<<< orphan*/  weight ; 

__attribute__((used)) static bool FUNC5(const struct perf_sample *s1,
			 const struct perf_sample *s2,
			 u64 type, u64 read_format)
{
	size_t i;

	if (type & PERF_SAMPLE_IDENTIFIER)
		FUNC0(id);

	if (type & PERF_SAMPLE_IP)
		FUNC0(ip);

	if (type & PERF_SAMPLE_TID) {
		FUNC0(pid);
		FUNC0(tid);
	}

	if (type & PERF_SAMPLE_TIME)
		FUNC0(time);

	if (type & PERF_SAMPLE_ADDR)
		FUNC0(addr);

	if (type & PERF_SAMPLE_ID)
		FUNC0(id);

	if (type & PERF_SAMPLE_STREAM_ID)
		FUNC0(stream_id);

	if (type & PERF_SAMPLE_CPU)
		FUNC0(cpu);

	if (type & PERF_SAMPLE_PERIOD)
		FUNC0(period);

	if (type & PERF_SAMPLE_READ) {
		if (read_format & PERF_FORMAT_GROUP)
			FUNC0(read.group.nr);
		else
			FUNC0(read.one.value);
		if (read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
			FUNC0(read.time_enabled);
		if (read_format & PERF_FORMAT_TOTAL_TIME_RUNNING)
			FUNC0(read.time_running);
		/* PERF_FORMAT_ID is forced for PERF_SAMPLE_READ */
		if (read_format & PERF_FORMAT_GROUP) {
			for (i = 0; i < s1->read.group.nr; i++)
				FUNC1(read.group.values[i]);
		} else {
			FUNC0(read.one.id);
		}
	}

	if (type & PERF_SAMPLE_CALLCHAIN) {
		FUNC0(callchain->nr);
		for (i = 0; i < s1->callchain->nr; i++)
			FUNC0(callchain->ips[i]);
	}

	if (type & PERF_SAMPLE_RAW) {
		FUNC0(raw_size);
		if (FUNC3(s1->raw_data, s2->raw_data, s1->raw_size)) {
			FUNC4("Samples differ at 'raw_data'\n");
			return false;
		}
	}

	if (type & PERF_SAMPLE_BRANCH_STACK) {
		FUNC0(branch_stack->nr);
		for (i = 0; i < s1->branch_stack->nr; i++)
			FUNC1(branch_stack->entries[i]);
	}

	if (type & PERF_SAMPLE_REGS_USER) {
		size_t sz = FUNC2(s1->user_regs.mask) * sizeof(u64);

		FUNC0(user_regs.mask);
		FUNC0(user_regs.abi);
		if (s1->user_regs.abi &&
		    (!s1->user_regs.regs || !s2->user_regs.regs ||
		     FUNC3(s1->user_regs.regs, s2->user_regs.regs, sz))) {
			FUNC4("Samples differ at 'user_regs'\n");
			return false;
		}
	}

	if (type & PERF_SAMPLE_STACK_USER) {
		FUNC0(user_stack.size);
		if (FUNC3(s1->user_stack.data, s2->user_stack.data,
			   s1->user_stack.size)) {
			FUNC4("Samples differ at 'user_stack'\n");
			return false;
		}
	}

	if (type & PERF_SAMPLE_WEIGHT)
		FUNC0(weight);

	if (type & PERF_SAMPLE_DATA_SRC)
		FUNC0(data_src);

	if (type & PERF_SAMPLE_TRANSACTION)
		FUNC0(transaction);

	if (type & PERF_SAMPLE_REGS_INTR) {
		size_t sz = FUNC2(s1->intr_regs.mask) * sizeof(u64);

		FUNC0(intr_regs.mask);
		FUNC0(intr_regs.abi);
		if (s1->intr_regs.abi &&
		    (!s1->intr_regs.regs || !s2->intr_regs.regs ||
		     FUNC3(s1->intr_regs.regs, s2->intr_regs.regs, sz))) {
			FUNC4("Samples differ at 'intr_regs'\n");
			return false;
		}
	}

	if (type & PERF_SAMPLE_PHYS_ADDR)
		FUNC0(phys_addr);

	return true;
}