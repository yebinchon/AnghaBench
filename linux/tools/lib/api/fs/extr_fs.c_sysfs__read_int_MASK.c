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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int PATH_MAX ; 
 int FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,char const*) ; 
 char* FUNC2 () ; 

int FUNC3(const char *entry, int *value)
{
	char path[PATH_MAX];
	const char *sysfs = FUNC2();

	if (!sysfs)
		return -1;

	FUNC1(path, sizeof(path), "%s/%s", sysfs, entry);

	return FUNC0(path, value);
}