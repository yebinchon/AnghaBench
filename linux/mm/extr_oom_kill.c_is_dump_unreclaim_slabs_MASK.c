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
 int /*<<< orphan*/  NR_ACTIVE_ANON ; 
 int /*<<< orphan*/  NR_ACTIVE_FILE ; 
 int /*<<< orphan*/  NR_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 int /*<<< orphan*/  NR_ISOLATED_ANON ; 
 int /*<<< orphan*/  NR_ISOLATED_FILE ; 
 int /*<<< orphan*/  NR_SLAB_UNRECLAIMABLE ; 
 int /*<<< orphan*/  NR_UNEVICTABLE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(void)
{
	unsigned long nr_lru;

	nr_lru = FUNC0(NR_ACTIVE_ANON) +
		 FUNC0(NR_INACTIVE_ANON) +
		 FUNC0(NR_ACTIVE_FILE) +
		 FUNC0(NR_INACTIVE_FILE) +
		 FUNC0(NR_ISOLATED_ANON) +
		 FUNC0(NR_ISOLATED_FILE) +
		 FUNC0(NR_UNEVICTABLE);

	return (FUNC0(NR_SLAB_UNRECLAIMABLE) > nr_lru);
}