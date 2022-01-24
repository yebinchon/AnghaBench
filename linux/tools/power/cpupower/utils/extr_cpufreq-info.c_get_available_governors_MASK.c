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
struct cpufreq_available_governors {char* governor; struct cpufreq_available_governors* next; } ;

/* Variables and functions */
 int EINVAL ; 
 char* FUNC0 (char*) ; 
 struct cpufreq_available_governors* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_available_governors*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct cpufreq_available_governors *governors =
		FUNC1(cpu);

	FUNC3(FUNC0("  available cpufreq governors: "));
	if (!governors) {
		FUNC3(FUNC0("Not Available\n"));
		return -EINVAL;
	}

	while (governors->next) {
		FUNC3("%s ", governors->governor);
		governors = governors->next;
	}
	FUNC3("%s\n", governors->governor);
	FUNC2(governors);
	return 0;
}