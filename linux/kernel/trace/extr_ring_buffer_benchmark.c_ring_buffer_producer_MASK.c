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
struct ring_buffer_event {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ MAX_NICE ; 
 unsigned long NSEC_PER_MSEC ; 
 int NSEC_PER_SEC ; 
 int RUN_TIME ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ consumer ; 
 scalar_t__ consumer_fifo ; 
 scalar_t__ consumer_nice ; 
 scalar_t__ disable_reader ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned long long FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ producer_fifo ; 
 scalar_t__ producer_nice ; 
 unsigned long long read ; 
 int /*<<< orphan*/  read_done ; 
 scalar_t__ read_events ; 
 int /*<<< orphan*/  read_start ; 
 int reader_finish ; 
 unsigned long long FUNC8 (int /*<<< orphan*/ ) ; 
 int* FUNC9 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC10 (int /*<<< orphan*/ ,int) ; 
 unsigned long long FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct ring_buffer_event*) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ test_error ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int wakeup_interval ; 
 int write_iteration ; 

__attribute__((used)) static void FUNC18(void)
{
	ktime_t start_time, end_time, timeout;
	unsigned long long time;
	unsigned long long entries;
	unsigned long long overruns;
	unsigned long missed = 0;
	unsigned long hit = 0;
	unsigned long avg;
	int cnt = 0;

	/*
	 * Hammer the buffer for 10 secs (this may
	 * make the system stall)
	 */
	FUNC15("Starting ring buffer hammer\n");
	start_time = FUNC6();
	timeout = FUNC4(start_time, RUN_TIME * NSEC_PER_SEC);
	do {
		struct ring_buffer_event *event;
		int *entry;
		int i;

		for (i = 0; i < write_iteration; i++) {
			event = FUNC10(buffer, 10);
			if (!event) {
				missed++;
			} else {
				hit++;
				entry = FUNC9(event);
				*entry = FUNC13();
				FUNC12(buffer, event);
			}
		}
		end_time = FUNC6();

		cnt++;
		if (consumer && !(cnt % wakeup_interval))
			FUNC17(consumer);

#ifndef CONFIG_PREEMPTION
		/*
		 * If we are a non preempt kernel, the 10 second run will
		 * stop everything while it runs. Instead, we will call
		 * cond_resched and also add any time that was lost by a
		 * rescedule.
		 *
		 * Do a cond resched at the same frequency we would wake up
		 * the reader.
		 */
		if (cnt % wakeup_interval)
			FUNC1();
#endif
	} while (FUNC5(end_time, timeout) && !FUNC0());
	FUNC15("End ring buffer hammer\n");

	if (consumer) {
		/* Init both completions here to avoid races */
		FUNC3(&read_start);
		FUNC3(&read_done);
		/* the completions must be visible before the finish var */
		FUNC14();
		reader_finish = 1;
		FUNC17(consumer);
		FUNC16(&read_done);
	}

	time = FUNC7(end_time, start_time);

	entries = FUNC8(buffer);
	overruns = FUNC11(buffer);

	if (test_error)
		FUNC15("ERROR!\n");

	if (!disable_reader) {
		if (consumer_fifo < 0)
			FUNC15("Running Consumer at nice: %d\n",
				     consumer_nice);
		else
			FUNC15("Running Consumer at SCHED_FIFO %d\n",
				     consumer_fifo);
	}
	if (producer_fifo < 0)
		FUNC15("Running Producer at nice: %d\n",
			     producer_nice);
	else
		FUNC15("Running Producer at SCHED_FIFO %d\n",
			     producer_fifo);

	/* Let the user know that the test is running at low priority */
	if (producer_fifo < 0 && consumer_fifo < 0 &&
	    producer_nice == MAX_NICE && consumer_nice == MAX_NICE)
		FUNC15("WARNING!!! This test is running at lowest priority.\n");

	FUNC15("Time:     %lld (usecs)\n", time);
	FUNC15("Overruns: %lld\n", overruns);
	if (disable_reader)
		FUNC15("Read:     (reader disabled)\n");
	else
		FUNC15("Read:     %ld  (by %s)\n", read,
			read_events ? "events" : "pages");
	FUNC15("Entries:  %lld\n", entries);
	FUNC15("Total:    %lld\n", entries + overruns + read);
	FUNC15("Missed:   %ld\n", missed);
	FUNC15("Hit:      %ld\n", hit);

	/* Convert time from usecs to millisecs */
	FUNC2(time, USEC_PER_MSEC);
	if (time)
		hit /= (long)time;
	else
		FUNC15("TIME IS ZERO??\n");

	FUNC15("Entries per millisec: %ld\n", hit);

	if (hit) {
		/* Calculate the average time in nanosecs */
		avg = NSEC_PER_MSEC / hit;
		FUNC15("%ld ns per entry\n", avg);
	}

	if (missed) {
		if (time)
			missed /= (long)time;

		FUNC15("Total iterations per millisec: %ld\n",
			     hit + missed);

		/* it is possible that hit + missed will overflow and be zero */
		if (!(hit + missed)) {
			FUNC15("hit + missed overflowed and totalled zero!\n");
			hit--; /* make it non zero */
		}

		/* Calculate the average time in nanosecs */
		avg = NSEC_PER_MSEC / (hit + missed);
		FUNC15("%ld ns per entry\n", avg);
	}
}