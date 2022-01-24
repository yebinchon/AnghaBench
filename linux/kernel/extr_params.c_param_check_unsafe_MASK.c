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
struct kernel_param {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int KERNEL_PARAM_FL_HWPARAM ; 
 int KERNEL_PARAM_FL_UNSAFE ; 
 int /*<<< orphan*/  LOCKDEP_STILL_OK ; 
 int /*<<< orphan*/  LOCKDOWN_MODULE_PARAMETERS ; 
 int /*<<< orphan*/  TAINT_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct kernel_param *kp)
{
	if (kp->flags & KERNEL_PARAM_FL_HWPARAM &&
	    FUNC2(LOCKDOWN_MODULE_PARAMETERS))
		return false;

	if (kp->flags & KERNEL_PARAM_FL_UNSAFE) {
		FUNC1("Setting dangerous option %s - tainting kernel\n",
			  kp->name);
		FUNC0(TAINT_USER, LOCKDEP_STILL_OK);
	}

	return true;
}