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
typedef  int /*<<< orphan*/  disable ;

/* Variables and functions */
 size_t IDLESTATE_DISABLE ; 
 int SYSFS_PATH_MAX ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int,unsigned int,char*,char*,int) ; 
 int /*<<< orphan*/ * idlestate_value_files ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned int) ; 

int FUNC4(unsigned int cpu,
			    unsigned int idlestate,
			    unsigned int disable)
{
	char value[SYSFS_PATH_MAX];
	int bytes_written;

	if (FUNC0(cpu) <= idlestate)
		return -1;

	if (!FUNC1(cpu, idlestate,
				 idlestate_value_files[IDLESTATE_DISABLE]))
		return -2;

	FUNC3(value, SYSFS_PATH_MAX, "%u", disable);

	bytes_written = FUNC2(cpu, idlestate, "disable",
						   value, sizeof(disable));
	if (bytes_written)
		return 0;
	return -3;
}