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
typedef  int /*<<< orphan*/  msr ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ errno ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,long long*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,long long) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*,char**,int) ; 

int FUNC6(int argc, char **argv) {
	int cpu, fd;
	long long msr;
	char msr_file_name[64];

	if (argc != 2)
		return 1;

	errno = 0;
	cpu = FUNC5(argv[1], (char **) NULL, 10);

	if (errno)
		return 1;

	FUNC4(msr_file_name, "/dev/cpu/%d/msr", cpu);
	fd = FUNC0(msr_file_name, O_RDONLY);

	if (fd == -1) {
		FUNC1("Failed to open");
		return 1;
	}

	FUNC2(fd, &msr,  sizeof(msr), 0x199);

	FUNC3("msr 0x199: 0x%llx\n", msr);
	return 0;
}