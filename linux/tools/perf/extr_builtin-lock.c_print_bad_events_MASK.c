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
 int BROKEN_MAX ; 
 int /*<<< orphan*/ * bad_hist ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(int bad, int total)
{
	/* Output for debug, this have to be removed */
	int i;
	const char *name[4] =
		{ "acquire", "acquired", "contended", "release" };

	FUNC0("\n=== output for debug===\n\n");
	FUNC0("bad: %d, total: %d\n", bad, total);
	FUNC0("bad rate: %.2f %%\n", (double)bad / (double)total * 100);
	FUNC0("histogram of events caused bad sequence\n");
	for (i = 0; i < BROKEN_MAX; i++)
		FUNC0(" %10s: %d\n", name[i], bad_hist[i]);
}