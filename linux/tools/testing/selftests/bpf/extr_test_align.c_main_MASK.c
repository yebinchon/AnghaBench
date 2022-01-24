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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (char*) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  tests ; 

int FUNC3(int argc, char **argv)
{
	unsigned int from = 0, to = FUNC0(tests);

	if (argc == 3) {
		unsigned int l = FUNC1(argv[argc - 2]);
		unsigned int u = FUNC1(argv[argc - 1]);

		if (l < to && u < to) {
			from = l;
			to   = u + 1;
		}
	} else if (argc == 2) {
		unsigned int t = FUNC1(argv[argc - 1]);

		if (t < to) {
			from = t;
			to   = t + 1;
		}
	}
	return FUNC2(from, to);
}