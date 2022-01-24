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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(FUNC0("Error setting new values. Common errors:\n"
			"- Do you have proper administration rights? (super-user?)\n"
			"- Is the governor you requested available and modprobed?\n"
			"- Trying to set an invalid policy?\n"
			"- Trying to set a specific frequency, but userspace governor is not available,\n"
			"   for example because of hardware which cannot be set to a specific frequency\n"
			"   or because the userspace governor isn't loaded?\n"));
}