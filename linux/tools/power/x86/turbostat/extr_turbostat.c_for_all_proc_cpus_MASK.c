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
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  proc_stat ; 

int FUNC4(int (func)(int))
{
	FILE *fp;
	int cpu_num;
	int retval;

	fp = FUNC2(proc_stat, "r");

	retval = FUNC3(fp, "cpu %*d %*d %*d %*d %*d %*d %*d %*d %*d %*d\n");
	if (retval != 0)
		FUNC0(1, "%s: failed to parse format", proc_stat);

	while (1) {
		retval = FUNC3(fp, "cpu%u %*d %*d %*d %*d %*d %*d %*d %*d %*d %*d\n", &cpu_num);
		if (retval != 1)
			break;

		retval = func(cpu_num);
		if (retval) {
			FUNC1(fp);
			return(retval);
		}
	}
	FUNC1(fp);
	return 0;
}