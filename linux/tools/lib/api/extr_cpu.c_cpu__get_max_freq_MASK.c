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
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 int FUNC2 (char*,unsigned long long*) ; 

int FUNC3(unsigned long long *freq)
{
	char entry[PATH_MAX];
	int cpu;

	if (FUNC1("devices/system/cpu/online", &cpu) < 0)
		return -1;

	FUNC0(entry, sizeof(entry),
		 "devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq", cpu);

	return FUNC2(entry, freq);
}