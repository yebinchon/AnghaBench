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
struct msr_hwp_request {int hwp_min; int hwp_max; int hwp_desired; int hwp_epp; int hwp_window; int hwp_use_pkg; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC2 (int) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC5 (int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(int cpu, struct msr_hwp_request *hwp_req, unsigned int msr_offset)
{
	unsigned long long msr = 0;

	if (debug > 1)
		FUNC6("cpu%d: requesting min %d max %d des %d epp %d window 0x%0x use_pkg %d\n",
			cpu, hwp_req->hwp_min, hwp_req->hwp_max,
			hwp_req->hwp_desired, hwp_req->hwp_epp,
			hwp_req->hwp_window, hwp_req->hwp_use_pkg);

	msr |= FUNC4(FUNC8(hwp_req->hwp_min));
	msr |= FUNC3(FUNC8(hwp_req->hwp_max));
	msr |= FUNC1(FUNC8(hwp_req->hwp_desired));
	msr |= FUNC2(hwp_req->hwp_epp);
	msr |= FUNC0(hwp_req->hwp_window);
	msr |= FUNC5(hwp_req->hwp_use_pkg);

	FUNC7(cpu, msr_offset, msr);
}