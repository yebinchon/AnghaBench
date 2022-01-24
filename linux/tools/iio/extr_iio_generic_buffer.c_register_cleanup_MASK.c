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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int const SIGABRT ; 
 int const SIGINT ; 
 int const SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  sig_handler ; 
 int FUNC3 (int const,struct sigaction*,int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	struct sigaction sa = { .sa_handler = sig_handler };
	const int signums[] = { SIGINT, SIGTERM, SIGABRT };
	int ret, i;

	for (i = 0; i < FUNC0(signums); ++i) {
		ret = FUNC3(signums[i], &sa, NULL);
		if (ret) {
			FUNC2("Failed to register signal handler");
			FUNC1(-1);
		}
	}
}