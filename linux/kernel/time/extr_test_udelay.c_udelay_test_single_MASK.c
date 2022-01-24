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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct seq_file {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, int usecs, uint32_t iters)
{
	int min = 0, max = 0, fail_count = 0;
	uint64_t sum = 0;
	uint64_t avg;
	int i;
	/* Allow udelay to be up to 0.5% fast */
	int allowed_error_ns = usecs * 5;

	for (i = 0; i < iters; ++i) {
		s64 kt1, kt2;
		int time_passed;

		kt1 = FUNC2();
		FUNC5(usecs);
		kt2 = FUNC2();
		time_passed = kt2 - kt1;

		if (i == 0 || time_passed < min)
			min = time_passed;
		if (i == 0 || time_passed > max)
			max = time_passed;
		if ((time_passed + allowed_error_ns) / 1000 < usecs)
			++fail_count;
		FUNC0(time_passed < 0);
		sum += time_passed;
	}

	avg = sum;
	FUNC1(avg, iters);
	FUNC3(s, "%d usecs x %d: exp=%d allowed=%d min=%d avg=%lld max=%d",
			usecs, iters, usecs * 1000,
			(usecs * 1000) - allowed_error_ns, min, avg, max);
	if (fail_count)
		FUNC3(s, " FAIL=%d", fail_count);
	FUNC4(s, "\n");

	return 0;
}