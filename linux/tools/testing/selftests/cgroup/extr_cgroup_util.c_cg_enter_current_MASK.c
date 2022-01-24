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
typedef  int /*<<< orphan*/  pidbuf ;

/* Variables and functions */
 int FUNC0 (char const*,char*,char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

int FUNC3(const char *cgroup)
{
	char pidbuf[64];

	FUNC2(pidbuf, sizeof(pidbuf), "%d", FUNC1());
	return FUNC0(cgroup, "cgroup.procs", pidbuf);
}