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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 char* FUNC2 () ; 

__attribute__((used)) static int FUNC3(const char *name)
{
	struct stat st;
	char path[PATH_MAX];
	const char *sysfs = FUNC2();

	if (!sysfs)
		return 0;

	/* Look for cpu sysfs (specific to arm) */
	FUNC0(path, PATH_MAX, "%s/bus/event_source/devices/%s/cpus",
				sysfs, name);
	if (FUNC1(path, &st) == 0)
		return 1;

	return 0;
}