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
typedef  int u64 ;
struct perf_pmu {int /*<<< orphan*/  name; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct perf_pmu*,char*,struct evlist*,int*) ; 
 int FUNC1 (struct perf_pmu*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static size_t FUNC3(struct perf_pmu *intel_pt_pmu,
				  struct evlist *evlist)
{
	u64 val;
	int err, topa_multiple_entries;
	size_t psb_period;

	if (FUNC1(intel_pt_pmu, "caps/topa_multiple_entries",
				"%d", &topa_multiple_entries) != 1)
		topa_multiple_entries = 0;

	/*
	 * Use caps/topa_multiple_entries to indicate early hardware that had
	 * extra frequent PSBs.
	 */
	if (!topa_multiple_entries) {
		psb_period = 256;
		goto out;
	}

	err = FUNC0(intel_pt_pmu, "psb_period", evlist, &val);
	if (err)
		val = 0;

	psb_period = 1 << (val + 11);
out:
	FUNC2("%s psb_period %zu\n", intel_pt_pmu->name, psb_period);
	return psb_period;
}