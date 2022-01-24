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
struct msr_hwp_request {scalar_t__ hwp_max; scalar_t__ hwp_min; scalar_t__ hwp_desired; } ;
struct msr_hwp_cap {scalar_t__ highest; scalar_t__ lowest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ update_hwp_desired ; 
 scalar_t__ update_hwp_max ; 
 scalar_t__ update_hwp_min ; 

int FUNC1(int cpu, struct msr_hwp_request *req, struct msr_hwp_cap *cap)
{
	if (update_hwp_max) {
		if (req->hwp_max > cap->highest)
			FUNC0(1, "cpu%d: requested max %d > capabilities highest %d, use --force?",
				cpu, req->hwp_max, cap->highest);
		if (req->hwp_max < cap->lowest)
			FUNC0(1, "cpu%d: requested max %d < capabilities lowest %d, use --force?",
				cpu, req->hwp_max, cap->lowest);
	}

	if (update_hwp_min) {
		if (req->hwp_min > cap->highest)
			FUNC0(1, "cpu%d: requested min %d > capabilities highest %d, use --force?",
				cpu, req->hwp_min, cap->highest);
		if (req->hwp_min < cap->lowest)
			FUNC0(1, "cpu%d: requested min %d < capabilities lowest %d, use --force?",
				cpu, req->hwp_min, cap->lowest);
	}

	if (update_hwp_min && update_hwp_max && (req->hwp_min > req->hwp_max))
		FUNC0(1, "cpu%d: requested min %d > requested max %d",
			cpu, req->hwp_min, req->hwp_max);

	if (update_hwp_desired && req->hwp_desired) {
		if (req->hwp_desired > req->hwp_max)
			FUNC0(1, "cpu%d: requested desired %d > requested max %d, use --force?",
				cpu, req->hwp_desired, req->hwp_max);
		if (req->hwp_desired < req->hwp_min)
			FUNC0(1, "cpu%d: requested desired %d < requested min %d, use --force?",
				cpu, req->hwp_desired, req->hwp_min);
		if (req->hwp_desired < cap->lowest)
			FUNC0(1, "cpu%d: requested desired %d < capabilities lowest %d, use --force?",
				cpu, req->hwp_desired, cap->lowest);
		if (req->hwp_desired > cap->highest)
			FUNC0(1, "cpu%d: requested desired %d > capabilities highest %d, use --force?",
				cpu, req->hwp_desired, cap->highest);
	}

	return 0;
}