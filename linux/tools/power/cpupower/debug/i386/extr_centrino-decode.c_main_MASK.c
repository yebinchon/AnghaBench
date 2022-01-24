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
 unsigned int MCPU ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3 (int argc, char **argv)
{
	unsigned int cpu, mode = 0;

	if (argc < 2)
		cpu = 0;
	else {
		cpu = FUNC2(argv[1], NULL, 0);
		if (cpu >= MCPU)
			mode = 1;
	}

	if (mode)
		FUNC0(cpu);
	else
		FUNC1(cpu);

	return 0;
}