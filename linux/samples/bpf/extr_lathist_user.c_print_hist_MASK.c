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
struct cpu_hist {scalar_t__ max; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int MAX_CPU ; 
 int MAX_ENTRIES ; 
 int MAX_STARS ; 
 struct cpu_hist* cpu_hist ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	char starstr[MAX_STARS];
	struct cpu_hist *hist;
	int i, j;

	/* clear screen */
	FUNC0("\033[2J");

	for (j = 0; j < MAX_CPU; j++) {
		hist = &cpu_hist[j];

		/* ignore CPUs without data (maybe offline?) */
		if (hist->max == 0)
			continue;

		FUNC0("CPU %d\n", j);
		FUNC0("      latency        : count     distribution\n");
		for (i = 1; i <= MAX_ENTRIES; i++) {
			FUNC1(starstr, hist->data[i - 1], hist->max, MAX_STARS);
			FUNC0("%8ld -> %-8ld : %-8ld |%-*s|\n",
				(1l << i) >> 1, (1l << i) - 1,
				hist->data[i - 1], MAX_STARS, starstr);
		}
	}
}