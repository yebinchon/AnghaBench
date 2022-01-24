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
struct stat {int dummy; } ;

/* Variables and functions */
 int base_cpu ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 scalar_t__ FUNC3 (char*) ; 

void FUNC4(void)
{
	struct stat sb;
	char pathname[32];

	FUNC1(pathname, "/dev/cpu/%d/msr", base_cpu);
	if (FUNC2(pathname, &sb))
		if (FUNC3("/sbin/modprobe msr > /dev/null 2>&1"))
			FUNC0(-5, "no /dev/cpu/0/msr, Try \"# modprobe msr\" ");
}