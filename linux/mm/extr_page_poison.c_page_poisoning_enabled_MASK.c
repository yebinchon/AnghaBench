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
 int /*<<< orphan*/  CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ want_page_poisoning ; 

bool FUNC2(void)
{
	/*
	 * Assumes that debug_pagealloc_enabled is set before
	 * memblock_free_all.
	 * Page poisoning is debug page alloc for some arches. If
	 * either of those options are enabled, enable poisoning.
	 */
	return (want_page_poisoning ||
		(!FUNC0(CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC) &&
		FUNC1()));
}