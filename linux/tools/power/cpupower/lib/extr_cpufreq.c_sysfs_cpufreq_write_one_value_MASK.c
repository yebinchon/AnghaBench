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
typedef  enum cpufreq_write { ____Placeholder_cpufreq_write } cpufreq_write ;

/* Variables and functions */
 int ENODEV ; 
 int MAX_CPUFREQ_WRITE_FILES ; 
 int /*<<< orphan*/ * cpufreq_write_files ; 
 size_t FUNC0 (unsigned int,int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static int FUNC1(unsigned int cpu,
					 enum cpufreq_write which,
					 const char *new_value, size_t len)
{
	if (which >= MAX_CPUFREQ_WRITE_FILES)
		return 0;

	if (FUNC0(cpu, cpufreq_write_files[which],
					new_value, len) != len)
		return -ENODEV;

	return 0;
}