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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,char*) ; 

__attribute__((used)) static int FUNC3(const char *path, int cpumode, bool expect)
{
	FUNC0("is_kernel_module",
			(!!FUNC1(path, cpumode)) == (!!expect));
	FUNC2("%s (cpumode: %d) - is_kernel_module: %s\n",
			path, cpumode, expect ? "true" : "false");
	return 0;
}