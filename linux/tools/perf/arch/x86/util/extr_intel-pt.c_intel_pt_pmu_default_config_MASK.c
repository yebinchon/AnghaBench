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
struct perf_pmu {int selectable; } ;
struct perf_event_attr {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_pmu*) ; 
 struct perf_event_attr* FUNC1 (int) ; 

struct perf_event_attr *
FUNC2(struct perf_pmu *intel_pt_pmu)
{
	struct perf_event_attr *attr;

	attr = FUNC1(sizeof(struct perf_event_attr));
	if (!attr)
		return NULL;

	attr->config = FUNC0(intel_pt_pmu);

	intel_pt_pmu->selectable = true;

	return attr;
}