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
struct msr_hwp_request {int dummy; } ;
struct msr_hwp_cap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_HWP_CAPABILITIES ; 
 int /*<<< orphan*/  MSR_HWP_REQUEST ; 
 int /*<<< orphan*/  MSR_IA32_ENERGY_PERF_BIAS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 scalar_t__ has_epb ; 
 int /*<<< orphan*/  has_hwp ; 
 int /*<<< orphan*/  FUNC1 (int,struct msr_hwp_cap*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct msr_hwp_request*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct msr_hwp_cap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct msr_hwp_request*,int /*<<< orphan*/ ) ; 

int FUNC6(int cpu)
{
	unsigned long long msr;
	struct msr_hwp_request req;
	struct msr_hwp_cap cap;

	if (has_epb) {
		FUNC0(cpu, MSR_IA32_ENERGY_PERF_BIAS, &msr);

		FUNC3("cpu%d: EPB %u\n", cpu, (unsigned int) msr);
	}

	if (!has_hwp)
		return 0;

	FUNC5(cpu, &req, MSR_HWP_REQUEST);
	FUNC2(cpu, &req, "");

	FUNC4(cpu, &cap, MSR_HWP_CAPABILITIES);
	FUNC1(cpu, &cap, "");

	return 0;
}