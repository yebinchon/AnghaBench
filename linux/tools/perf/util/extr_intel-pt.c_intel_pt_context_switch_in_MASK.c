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
struct perf_sample {scalar_t__ pid; scalar_t__ tid; int cpu; } ;
struct intel_pt_queue {int next_tid; int switch_state; scalar_t__ sync_switch; } ;
struct intel_pt {int /*<<< orphan*/  machine; scalar_t__ sync_switch; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
#define  INTEL_PT_SS_EXPECTING_SWITCH_EVENT 132 
#define  INTEL_PT_SS_EXPECTING_SWITCH_IP 131 
#define  INTEL_PT_SS_NOT_TRACING 130 
#define  INTEL_PT_SS_TRACING 129 
#define  INTEL_PT_SS_UNKNOWN 128 
 struct intel_pt_queue* FUNC0 (struct intel_pt*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct intel_pt *pt,
				      struct perf_sample *sample)
{
	pid_t pid = sample->pid;
	pid_t tid = sample->tid;
	int cpu = sample->cpu;

	if (pt->sync_switch) {
		struct intel_pt_queue *ptq;

		ptq = FUNC0(pt, cpu);
		if (ptq && ptq->sync_switch) {
			ptq->next_tid = -1;
			switch (ptq->switch_state) {
			case INTEL_PT_SS_NOT_TRACING:
			case INTEL_PT_SS_UNKNOWN:
			case INTEL_PT_SS_TRACING:
				break;
			case INTEL_PT_SS_EXPECTING_SWITCH_EVENT:
			case INTEL_PT_SS_EXPECTING_SWITCH_IP:
				ptq->switch_state = INTEL_PT_SS_TRACING;
				break;
			default:
				break;
			}
		}
	}

	/*
	 * If the current tid has not been updated yet, ensure it is now that
	 * a "switch in" event has occurred.
	 */
	if (FUNC1(pt->machine, cpu) == tid)
		return 0;

	return FUNC2(pt->machine, cpu, pid, tid);
}