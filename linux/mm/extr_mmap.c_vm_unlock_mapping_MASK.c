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
struct address_space {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_MM_ALL_LOCKS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct address_space *mapping)
{
	if (FUNC3(AS_MM_ALL_LOCKS, &mapping->flags)) {
		/*
		 * AS_MM_ALL_LOCKS can't change to 0 from under us
		 * because we hold the mm_all_locks_mutex.
		 */
		FUNC1(mapping);
		if (!FUNC2(AS_MM_ALL_LOCKS,
					&mapping->flags))
			FUNC0();
	}
}