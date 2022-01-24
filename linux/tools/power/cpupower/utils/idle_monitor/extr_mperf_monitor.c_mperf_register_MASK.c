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
struct cpuidle_monitor {int /*<<< orphan*/  name; int /*<<< orphan*/  name_len; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int CPUPOWER_CAP_APERF ; 
 void* aperf_current_count ; 
 void* aperf_previous_count ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cpu_count ; 
 TYPE_1__ cpupower_cpu_info ; 
 scalar_t__ FUNC1 () ; 
 void* is_valid ; 
 void* mperf_current_count ; 
 struct cpuidle_monitor mperf_monitor ; 
 void* mperf_previous_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

struct cpuidle_monitor *FUNC3(void)
{
	if (!(cpupower_cpu_info.caps & CPUPOWER_CAP_APERF))
		return NULL;

	if (FUNC1())
		return NULL;

	/* Free this at program termination */
	is_valid = FUNC0(cpu_count, sizeof(int));
	mperf_previous_count = FUNC0(cpu_count, sizeof(unsigned long long));
	aperf_previous_count = FUNC0(cpu_count, sizeof(unsigned long long));
	mperf_current_count = FUNC0(cpu_count, sizeof(unsigned long long));
	aperf_current_count = FUNC0(cpu_count, sizeof(unsigned long long));

	mperf_monitor.name_len = FUNC2(mperf_monitor.name);
	return &mperf_monitor;
}