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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,unsigned long long*) ; 

unsigned long long FUNC4(char *path)
{
	FILE *fp;
	int retval;
	unsigned long long counter;

	fp = FUNC2(path, "r");

	retval = FUNC3(fp, "%lld", &counter);
	if (retval != 1)
		FUNC0(1, "snapshot_sysfs_counter(%s)", path);

	FUNC1(fp);

	return counter;
}