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
 scalar_t__ cfg_do_ipv4 ; 
 scalar_t__ cfg_do_ipv6 ; 
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int seed ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(int argc, char **argv)
{
	FUNC0(argc, argv);
	seed = FUNC5(NULL);
	FUNC4(seed);
	/* Print the seed to track/reproduce potential failures. */
	FUNC1("seed = %d\n", seed);

	if (cfg_do_ipv4)
		FUNC2();
	if (cfg_do_ipv6)
		FUNC3();

	return 0;
}