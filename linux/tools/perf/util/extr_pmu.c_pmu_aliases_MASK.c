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
struct list_head {int dummy; } ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 char* FUNC3 () ; 

__attribute__((used)) static int FUNC4(const char *name, struct list_head *head)
{
	struct stat st;
	char path[PATH_MAX];
	const char *sysfs = FUNC3();

	if (!sysfs)
		return -1;

	FUNC1(path, PATH_MAX,
		 "%s/bus/event_source/devices/%s/events", sysfs, name);

	if (FUNC2(path, &st) < 0)
		return 0;	 /* no error if 'events' does not exist */

	if (FUNC0(path, head))
		return -1;

	return 0;
}