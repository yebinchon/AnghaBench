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
typedef  enum lockdown_reason { ____Placeholder_lockdown_reason } lockdown_reason ;

/* Variables and functions */
 int EPERM ; 
 int kernel_locked_down ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static int FUNC1(const char *where, enum lockdown_reason level)
{
	if (kernel_locked_down >= level)
		return -EPERM;

	kernel_locked_down = level;
	FUNC0("Kernel is locked down from %s; see man kernel_lockdown.7\n",
		  where);
	return 0;
}