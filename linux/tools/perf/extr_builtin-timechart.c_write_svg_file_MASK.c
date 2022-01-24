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
typedef  scalar_t__ u64 ;
struct timechart {int proc_num; scalar_t__ numcpus; int /*<<< orphan*/  tasks_only; int /*<<< orphan*/  turbo_frequency; int /*<<< orphan*/  max_freq; int /*<<< orphan*/  last_time; int /*<<< orphan*/  first_time; scalar_t__ io_events; scalar_t__ power_only; } ;

/* Variables and functions */
 int BYTES_THRESH ; 
 int TIME_THRESH ; 
 int FUNC0 (struct timechart*,int) ; 
 int FUNC1 (struct timechart*,int) ; 
 int FUNC2 (struct timechart*) ; 
 int /*<<< orphan*/  FUNC3 (struct timechart*) ; 
 int /*<<< orphan*/  FUNC4 (struct timechart*) ; 
 int /*<<< orphan*/  FUNC5 (struct timechart*) ; 
 int /*<<< orphan*/  FUNC6 (struct timechart*) ; 
 int /*<<< orphan*/  FUNC7 (struct timechart*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ process_filter ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (double) ; 

__attribute__((used)) static void FUNC14(struct timechart *tchart, const char *filename)
{
	u64 i;
	int count;
	int thresh = tchart->io_events ? BYTES_THRESH : TIME_THRESH;

	if (tchart->power_only)
		tchart->proc_num = 0;

	/* We'd like to show at least proc_num tasks;
	 * be less picky if we have fewer */
	do {
		if (process_filter)
			count = FUNC2(tchart);
		else if (tchart->io_events)
			count = FUNC0(tchart, thresh);
		else
			count = FUNC1(tchart, thresh);
		thresh /= 10;
	} while (!process_filter && thresh && count < tchart->proc_num);

	if (!tchart->proc_num)
		count = 0;

	if (tchart->io_events) {
		FUNC8(filename, 0, count, tchart->first_time, tchart->last_time);

		FUNC13(0.5);
		FUNC11();

		FUNC5(tchart);
	} else {
		FUNC8(filename, tchart->numcpus, count, tchart->first_time, tchart->last_time);

		FUNC13(0);

		FUNC12();

		for (i = 0; i < tchart->numcpus; i++)
			FUNC10(i, tchart->max_freq, tchart->turbo_frequency);

		FUNC4(tchart);
		if (tchart->proc_num)
			FUNC6(tchart);
		if (!tchart->tasks_only)
			FUNC3(tchart);
		if (tchart->proc_num)
			FUNC7(tchart);
	}

	FUNC9();
}