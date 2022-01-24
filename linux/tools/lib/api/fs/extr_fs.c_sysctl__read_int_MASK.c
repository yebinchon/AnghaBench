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
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*) ; 

int FUNC3(const char *sysctl, int *value)
{
	char path[PATH_MAX];
	const char *procfs = FUNC1();

	if (!procfs)
		return -1;

	FUNC2(path, sizeof(path), "%s/sys/%s", procfs, sysctl);

	return FUNC0(path, value);
}