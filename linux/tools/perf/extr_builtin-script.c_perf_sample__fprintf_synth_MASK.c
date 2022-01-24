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
struct perf_sample {int dummy; } ;
struct TYPE_3__ {int config; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  PERF_SYNTH_INTEL_CBR 133 
#define  PERF_SYNTH_INTEL_EXSTOP 132 
#define  PERF_SYNTH_INTEL_MWAIT 131 
#define  PERF_SYNTH_INTEL_PTWRITE 130 
#define  PERF_SYNTH_INTEL_PWRE 129 
#define  PERF_SYNTH_INTEL_PWRX 128 
 int FUNC0 (struct perf_sample*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct perf_sample*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct perf_sample*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct perf_sample*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct perf_sample*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct perf_sample*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct perf_sample *sample,
				      struct evsel *evsel, FILE *fp)
{
	switch (evsel->core.attr.config) {
	case PERF_SYNTH_INTEL_PTWRITE:
		return FUNC3(sample, fp);
	case PERF_SYNTH_INTEL_MWAIT:
		return FUNC2(sample, fp);
	case PERF_SYNTH_INTEL_PWRE:
		return FUNC4(sample, fp);
	case PERF_SYNTH_INTEL_EXSTOP:
		return FUNC1(sample, fp);
	case PERF_SYNTH_INTEL_PWRX:
		return FUNC5(sample, fp);
	case PERF_SYNTH_INTEL_CBR:
		return FUNC0(sample, fp);
	default:
		break;
	}

	return 0;
}