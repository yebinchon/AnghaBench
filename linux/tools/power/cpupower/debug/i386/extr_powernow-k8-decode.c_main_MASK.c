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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6 (int argc, char *argv[])
{
	int err;
	int cpu;
	uint32_t fid, vid;

	if (argc < 2)
		cpu = 0;
	else
		cpu = FUNC5(argv[1], NULL, 0);

	err = FUNC3(cpu, &fid, &vid);

	if (err) {
		FUNC4("can't get fid, vid from MSR\n");
		FUNC4("Possible trouble: you don't run a powernow-k8 capable cpu\n");
		FUNC4("or you are not root, or the msr driver is not present\n");
		FUNC0(1);
	}

	
	FUNC4("cpu %d currently at %d MHz and %d mV\n",
			cpu,
			FUNC1(fid),
			FUNC2(vid));
	
	return 0;
}