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
struct TYPE_2__ {int /*<<< orphan*/  hwp_window; int /*<<< orphan*/  hwp_desired; int /*<<< orphan*/  hwp_epp; int /*<<< orphan*/  hwp_max; int /*<<< orphan*/  hwp_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  force ; 
 scalar_t__ has_epb ; 
 int /*<<< orphan*/  new_epb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__ req_update ; 
 int /*<<< orphan*/  turbo_update_value ; 
 int update_hwp_enable ; 

void FUNC8(char *s)
{
	force++;
	update_hwp_enable = 1;
	req_update.hwp_min = FUNC4(FUNC7(s));
	req_update.hwp_max = FUNC3(FUNC7(s));
	req_update.hwp_epp = FUNC2(FUNC7(s));
	if (has_epb)
		new_epb = FUNC0(FUNC7(s));
	turbo_update_value = FUNC6(FUNC7(s));
	req_update.hwp_desired = FUNC1(FUNC7(s));
	req_update.hwp_window = FUNC5(FUNC7(s));
}