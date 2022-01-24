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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int,char const*) ; 
 int FUNC1 (char*,int*) ; 

__attribute__((used)) static int FUNC2(int cpu, const char *name, int *value)
{
	char path[PATH_MAX];

	FUNC0(path, PATH_MAX,
		"devices/system/cpu/cpu%d/topology/%s", cpu, name);

	return FUNC1(path, value);
}