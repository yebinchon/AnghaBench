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
struct config {scalar_t__ verbose; } ;

/* Variables and functions */
 unsigned int GAUGECOUNT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 long long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

unsigned int FUNC4(long load, struct config *config)
{
	int i;
	long long now, then;
	unsigned int estimated = GAUGECOUNT;
	unsigned int rounds = 0;
	unsigned int timed = 0;

	if (config->verbose)
		FUNC3("calibrating load of %lius, please wait...\n", load);

	/* get the initial calculation time for a specific number of rounds */
	now = FUNC2();
	FUNC0(estimated);
	then = FUNC2();

	timed = (unsigned int)(then - now);

	/* approximation of the wanted load time by comparing with the
	 * initial calculation time */
	for (i = 0; i < 4; i++) {
		rounds = (unsigned int)(load * estimated / timed);
		FUNC1("calibrating with %u rounds\n", rounds);
		now = FUNC2();
		FUNC0(rounds);
		then = FUNC2();

		timed = (unsigned int)(then - now);
		estimated = rounds;
	}
	if (config->verbose)
		FUNC3("calibration done\n");

	return estimated;
}