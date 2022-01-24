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
struct rlimit {int rlim_cur; int rlim_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 

void FUNC3(void)
{
	struct rlimit rlim;

	if (FUNC0(RLIMIT_MEMLOCK, &rlim) == 0) {
		rlim.rlim_cur *= 4;
		rlim.rlim_max *= 4;

		if (FUNC2(RLIMIT_MEMLOCK, &rlim) < 0) {
			rlim.rlim_cur /= 2;
			rlim.rlim_max /= 2;

			if (FUNC2(RLIMIT_MEMLOCK, &rlim) < 0)
				FUNC1("Couldn't bump rlimit(MEMLOCK), failures may take place when creating BPF maps, etc\n");
		}
	}
}