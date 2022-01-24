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
struct config {long sleep; long load; unsigned int rounds; int cycles; char* governor; scalar_t__ load_step; scalar_t__ sleep_step; scalar_t__ verbose; int /*<<< orphan*/  output; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (long,struct config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,long,...) ; 
 long long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,long,...) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (long) ; 

void FUNC9(struct config *config)
{
	unsigned int _round, cycle;
	long long now, then;
	long sleep_time = 0, load_time = 0;
	long performance_time = 0, powersave_time = 0;
	unsigned int calculations;
	unsigned long total_time = 0, progress_time = 0;

	sleep_time = config->sleep;
	load_time = config->load;

	/* For the progress bar */
	for (_round = 1; _round <= config->rounds; _round++)
		total_time += _round * (config->sleep + config->load);
	total_time *= 2; /* powersave and performance cycles */

	for (_round = 0; _round < config->rounds; _round++) {
		performance_time = 0LL;
		powersave_time = 0LL;

		FUNC7(total_time, progress_time);

		/* set the cpufreq governor to "performance" which disables
		 * P-State switching. */
		if (FUNC6("performance", config->cpu) != 0)
			return;

		/* calibrate the calculation time. the resulting calculation
		 * _rounds should produce a load which matches the configured
		 * load time */
		calculations = FUNC1(load_time, config);

		if (config->verbose)
			FUNC5("_round %i: doing %u cycles with %u calculations"
			       " for %lius\n", _round + 1, config->cycles,
			       calculations, load_time);

		FUNC3(config->output, "%ld %li %li ",
			_round, load_time, sleep_time);

		if (config->verbose)
			FUNC5("average: %lius, rps:%li\n",
				load_time / calculations,
				1000000 * calculations / load_time);

		/* do some sleep/load cycles with the performance governor */
		for (cycle = 0; cycle < config->cycles; cycle++) {
			now = FUNC4();
			FUNC8(sleep_time);
			FUNC0(calculations);
			then = FUNC4();
			performance_time += then - now - sleep_time;
			if (config->verbose)
				FUNC5("performance cycle took %lius, "
					"sleep: %lius, "
					"load: %lius, rounds: %u\n",
					(long)(then - now), sleep_time,
					load_time, calculations);
		}
		FUNC3(config->output, "%li ",
			performance_time / config->cycles);

		progress_time += sleep_time + load_time;
		FUNC7(total_time, progress_time);

		/* set the powersave governor which activates P-State switching
		 * again */
		if (FUNC6(config->governor, config->cpu) != 0)
			return;

		/* again, do some sleep/load cycles with the
		 * powersave governor */
		for (cycle = 0; cycle < config->cycles; cycle++) {
			now = FUNC4();
			FUNC8(sleep_time);
			FUNC0(calculations);
			then = FUNC4();
			powersave_time += then - now - sleep_time;
			if (config->verbose)
				FUNC5("powersave cycle took %lius, "
					"sleep: %lius, "
					"load: %lius, rounds: %u\n",
					(long)(then - now), sleep_time,
					load_time, calculations);
		}

		progress_time += sleep_time + load_time;

		/* compare the average sleep/load cycles  */
		FUNC3(config->output, "%li ",
			powersave_time / config->cycles);
		FUNC3(config->output, "%.3ld\n",
			performance_time * 100.0 / powersave_time);
		FUNC2(config->output);

		if (config->verbose)
			FUNC5("performance is at %.2f%%\n",
				performance_time * 100.0 / powersave_time);

		sleep_time += config->sleep_step;
		load_time += config->load_step;
	}
}