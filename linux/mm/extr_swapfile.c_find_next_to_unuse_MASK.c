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
struct swap_info_struct {unsigned int max; int /*<<< orphan*/ * swap_map; } ;

/* Variables and functions */
 unsigned int LATENCY_LIMIT ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SWAP_MAP_BAD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct swap_info_struct*,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned char) ; 

__attribute__((used)) static unsigned int FUNC4(struct swap_info_struct *si,
					unsigned int prev, bool frontswap)
{
	unsigned int i;
	unsigned char count;

	/*
	 * No need for swap_lock here: we're just looking
	 * for whether an entry is in use, not modifying it; false
	 * hits are okay, and sys_swapoff() has already prevented new
	 * allocations from this area (while holding swap_lock).
	 */
	for (i = prev + 1; i < si->max; i++) {
		count = FUNC0(si->swap_map[i]);
		if (count && FUNC3(count) != SWAP_MAP_BAD)
			if (!frontswap || FUNC2(si, i))
				break;
		if ((i % LATENCY_LIMIT) == 0)
			FUNC1();
	}

	if (i == si->max)
		i = 0;

	return i;
}