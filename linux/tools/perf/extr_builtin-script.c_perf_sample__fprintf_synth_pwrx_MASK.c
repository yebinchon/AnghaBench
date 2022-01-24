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
struct perf_synth_intel_pwrx {int deepest_cstate; int last_cstate; int wake_reason; } ;
struct perf_sample {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 scalar_t__ FUNC1 (struct perf_sample*,struct perf_synth_intel_pwrx) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 struct perf_synth_intel_pwrx* FUNC3 (struct perf_sample*) ; 

__attribute__((used)) static int FUNC4(struct perf_sample *sample, FILE *fp)
{
	struct perf_synth_intel_pwrx *data = FUNC3(sample);
	int len;

	if (FUNC1(sample, *data))
		return 0;

	len = FUNC0(fp, " deepest cstate: %u last cstate: %u wake reason: %#x ",
		     data->deepest_cstate, data->last_cstate,
		     data->wake_reason);
	return len + FUNC2(len, fp);
}