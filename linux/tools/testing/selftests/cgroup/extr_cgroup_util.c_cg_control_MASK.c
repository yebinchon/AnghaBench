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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char const*,char const*) ; 
 int FUNC2 (char const*) ; 

char *FUNC3(const char *cgroup, const char *control)
{
	size_t len = FUNC2(cgroup) + FUNC2(control) + 2;
	char *ret = FUNC0(len);

	FUNC1(ret, len, "%s/%s", cgroup, control);

	return ret;
}