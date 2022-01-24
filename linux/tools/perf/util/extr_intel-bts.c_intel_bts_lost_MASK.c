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
union perf_event {int /*<<< orphan*/  auxtrace_error; } ;
struct perf_sample {int /*<<< orphan*/  time; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; int /*<<< orphan*/  cpu; } ;
struct intel_bts {int /*<<< orphan*/  session; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_BTS_ERR_LOST ; 
 int /*<<< orphan*/  PERF_AUXTRACE_ERROR_ITRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,union perf_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct intel_bts *bts, struct perf_sample *sample)
{
	union perf_event event;
	int err;

	FUNC0(&event.auxtrace_error, PERF_AUXTRACE_ERROR_ITRACE,
			     INTEL_BTS_ERR_LOST, sample->cpu, sample->pid,
			     sample->tid, 0, "Lost trace data", sample->time);

	err = FUNC1(bts->session, &event, NULL);
	if (err)
		FUNC2("Intel BTS: failed to deliver error event, error %d\n",
		       err);

	return err;
}