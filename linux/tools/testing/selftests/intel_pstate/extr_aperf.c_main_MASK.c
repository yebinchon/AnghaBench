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
struct timeb {int time; int millitm; } ;
typedef  int /*<<< orphan*/  old_tsc ;
typedef  int /*<<< orphan*/  old_mperf ;
typedef  int /*<<< orphan*/  old_aperf ;
typedef  int /*<<< orphan*/  new_tsc ;
typedef  int /*<<< orphan*/  new_mperf ;
typedef  int /*<<< orphan*/  new_aperf ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int KSFT_SKIP ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct timeb*) ; 
 unsigned int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,long long*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,long long,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 char* FUNC10 (scalar_t__) ; 
 unsigned int FUNC11 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int FUNC13(int argc, char **argv) {
	unsigned int i, cpu, fd;
	char msr_file_name[64];
	long long tsc, old_tsc, new_tsc;
	long long aperf, old_aperf, new_aperf;
	long long mperf, old_mperf, new_mperf;
	struct timeb before, after;
	long long int start, finish, total;
	cpu_set_t cpuset;

	if (argc != 2) {
		FUNC12(argv[0]);
		return 1;
	}

	errno = 0;
	cpu = FUNC11(argv[1], (char **) NULL, 10);

	if (errno) {
		FUNC12(argv[0]);
		return 1;
	}

	FUNC8(msr_file_name, "/dev/cpu/%d/msr", cpu);
	fd = FUNC3(msr_file_name, O_RDONLY);

	if (fd == -1) {
		FUNC6("/dev/cpu/%d/msr: %s\n", cpu, FUNC10(errno));
		return KSFT_SKIP;
	}

	FUNC1(&cpuset);
	FUNC0(cpu, &cpuset);

	if (FUNC7(0, sizeof(cpu_set_t), &cpuset)) {
		FUNC4("Failed to set cpu affinity");
		return 1;
	}

	FUNC2(&before);
	FUNC5(fd, &old_tsc,  sizeof(old_tsc), 0x10);
	FUNC5(fd, &old_aperf,  sizeof(old_mperf), 0xe7);
	FUNC5(fd, &old_mperf,  sizeof(old_aperf), 0xe8);

	for (i=0; i<0x8fffffff; i++) {
		FUNC9(i);
	}

	FUNC2(&after);
	FUNC5(fd, &new_tsc,  sizeof(new_tsc), 0x10);
	FUNC5(fd, &new_aperf,  sizeof(new_mperf), 0xe7);
	FUNC5(fd, &new_mperf,  sizeof(new_aperf), 0xe8);

	tsc = new_tsc-old_tsc;
	aperf = new_aperf-old_aperf;
	mperf = new_mperf-old_mperf;

	start = before.time*1000 + before.millitm;
	finish = after.time*1000 + after.millitm;
	total = finish - start;

	FUNC6("runTime: %4.2f\n", 1.0*total/1000);
	FUNC6("freq: %7.0f\n", tsc / (1.0*aperf / (1.0 * mperf)) / total);
	return 0;
}