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
struct TYPE_2__ {int /*<<< orphan*/  hwp_max; int /*<<< orphan*/  hwp_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  has_hwp ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ req_update ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ update_hwp_max ; 
 scalar_t__ update_hwp_min ; 

int FUNC3(int cpu)
{
	if (!has_hwp)
		return 0;

	if (!FUNC1())
		return 0;

	if (FUNC0("/sys/devices/system/cpu/cpu0/cpufreq", F_OK))
		return 0;

	if (update_hwp_min)
		FUNC2(0, cpu, req_update.hwp_min);

	if (update_hwp_max)
		FUNC2(1, cpu, req_update.hwp_max);

	return 0;
}