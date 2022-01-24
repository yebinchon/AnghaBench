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
struct perf_pmu {int selectable; int is_uncore; } ;
struct perf_event_attr {int sample_period; } ;

/* Variables and functions */
 int FUNC0 (struct perf_pmu*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct perf_event_attr* FUNC3 (int) ; 

struct perf_event_attr
*FUNC4(struct perf_pmu *arm_spe_pmu)
{
	struct perf_event_attr *attr;

	attr = FUNC3(sizeof(struct perf_event_attr));
	if (!attr) {
		FUNC2("arm_spe default config cannot allocate a perf_event_attr\n");
		return NULL;
	}

	/*
	 * If kernel driver doesn't advertise a minimum,
	 * use max allowable by PMSIDR_EL1.INTERVAL
	 */
	if (FUNC0(arm_spe_pmu, "caps/min_interval", "%llu",
				  &attr->sample_period) != 1) {
		FUNC1("arm_spe driver doesn't advertise a min. interval. Using 4096\n");
		attr->sample_period = 4096;
	}

	arm_spe_pmu->selectable = true;
	arm_spe_pmu->is_uncore = false;

	return attr;
}