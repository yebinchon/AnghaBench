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
struct lock_lookup {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lock_lookup*) ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 scalar_t__ __init_state ; 
 struct lock_lookup* __locks ; 
 int /*<<< orphan*/  __locks_nr ; 
 scalar_t__ done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct lock_lookup* FUNC3 (int) ; 

__attribute__((used)) static struct lock_lookup *FUNC4(void)
{
	if (__init_state != done) {
		/*
		 * Some programs attempt to initialize and use locks in their
		 * allocation path. This means that a call to malloc() would
		 * result in locks being initialized and locked.
		 *
		 * Why is it an issue for us? dlsym() below will try allocating
		 * to give us the original function. Since this allocation will
		 * result in a locking operations, we have to let pthread deal
		 * with it, but we can't! we don't have the pointer to the
		 * original API since we're inside dlsym() trying to get it
		 */

		int idx = __locks_nr++;
		if (idx >= FUNC0(__locks)) {
			FUNC1(STDERR_FILENO,
		"LOCKDEP error: insufficient LIBLOCKDEP_STATIC_ENTRIES\n");
			FUNC2(EX_UNAVAILABLE);
		}
		return __locks + idx;
	}

	return FUNC3(sizeof(struct lock_lookup));
}