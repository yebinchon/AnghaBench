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
struct msr_hwp_request {unsigned long long hwp_epp; unsigned long long hwp_window; unsigned long long hwp_use_pkg; void* hwp_desired; void* hwp_max; void* hwp_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int,unsigned long long*) ; 
 void* FUNC1 (unsigned long long) ; 

void FUNC2(int cpu, struct msr_hwp_request *hwp_req, unsigned int msr_offset)
{
	unsigned long long msr;

	FUNC0(cpu, msr_offset, &msr);

	hwp_req->hwp_min = FUNC1((((msr) >> 0) & 0xff));
	hwp_req->hwp_max = FUNC1((((msr) >> 8) & 0xff));
	hwp_req->hwp_desired = FUNC1((((msr) >> 16) & 0xff));
	hwp_req->hwp_epp = (((msr) >> 24) & 0xff);
	hwp_req->hwp_window = (((msr) >> 32) & 0x3ff);
	hwp_req->hwp_use_pkg = (((msr) >> 42) & 0x1);
}