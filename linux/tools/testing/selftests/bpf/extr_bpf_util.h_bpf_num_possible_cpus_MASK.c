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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static inline unsigned int FUNC4(void)
{
	int possible_cpus = FUNC1();

	if (possible_cpus < 0) {
		FUNC2("Failed to get # of possible cpus: '%s'!\n",
		       FUNC3(-possible_cpus));
		FUNC0(1);
	}
	return possible_cpus;
}