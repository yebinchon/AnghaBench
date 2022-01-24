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
struct msr_hwp_request {int /*<<< orphan*/  hwp_use_pkg; int /*<<< orphan*/  hwp_epp; int /*<<< orphan*/  hwp_window; int /*<<< orphan*/  hwp_desired; int /*<<< orphan*/  hwp_max; int /*<<< orphan*/  hwp_min; } ;
struct msr_hwp_cap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwp_use_pkg; int /*<<< orphan*/  hwp_epp; int /*<<< orphan*/  hwp_window; int /*<<< orphan*/  hwp_desired; int /*<<< orphan*/  hwp_max; int /*<<< orphan*/  hwp_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_HWP_CAPABILITIES ; 
 int MSR_HWP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int,struct msr_hwp_request*,struct msr_hwp_cap*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  force ; 
 int /*<<< orphan*/  FUNC1 (int,struct msr_hwp_cap*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct msr_hwp_request*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct msr_hwp_cap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct msr_hwp_request*,int) ; 
 TYPE_1__ req_update ; 
 scalar_t__ update_hwp_desired ; 
 scalar_t__ update_hwp_epp ; 
 scalar_t__ update_hwp_max ; 
 scalar_t__ update_hwp_min ; 
 scalar_t__ update_hwp_window ; 
 int /*<<< orphan*/  FUNC5 (int,struct msr_hwp_request*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct msr_hwp_request*,int) ; 

int FUNC7(int cpu)
{
	struct msr_hwp_request req;
	struct msr_hwp_cap cap;

	int msr_offset = MSR_HWP_REQUEST;

	FUNC4(cpu, &req, msr_offset);
	if (debug)
		FUNC2(cpu, &req, "old: ");

	if (update_hwp_min)
		req.hwp_min = req_update.hwp_min;

	if (update_hwp_max)
		req.hwp_max = req_update.hwp_max;

	if (update_hwp_desired)
		req.hwp_desired = req_update.hwp_desired;

	if (update_hwp_window)
		req.hwp_window = req_update.hwp_window;

	if (update_hwp_epp)
		req.hwp_epp = req_update.hwp_epp;

	req.hwp_use_pkg = req_update.hwp_use_pkg;

	FUNC3(cpu, &cap, MSR_HWP_CAPABILITIES);
	if (debug)
		FUNC1(cpu, &cap, "");

	if (!force)
		FUNC0(cpu, &req, &cap);

	FUNC5(cpu, &req);

	FUNC6(cpu, &req, msr_offset);

	if (debug) {
		FUNC4(cpu, &req, msr_offset);
		FUNC2(cpu, &req, "new: ");
	}
	return 0;
}