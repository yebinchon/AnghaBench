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
typedef  size_t u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_KASAN_SW_TAGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t KASAN_SHADOW_MASK ; 
 size_t FUNC1 (void const*) ; 
 scalar_t__ FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (void const*,size_t,size_t) ; 
 void* FUNC4 (void const*) ; 

void FUNC5(const void *address, size_t size)
{
	u8 tag = FUNC1(address);

	/*
	 * Perform shadow offset calculation based on untagged address, as
	 * some of the callers (e.g. kasan_unpoison_object_data) pass tagged
	 * addresses to this function.
	 */
	address = FUNC4(address);

	FUNC3(address, size, tag);

	if (size & KASAN_SHADOW_MASK) {
		u8 *shadow = (u8 *)FUNC2(address + size);

		if (FUNC0(CONFIG_KASAN_SW_TAGS))
			*shadow = tag;
		else
			*shadow = size & KASAN_SHADOW_MASK;
	}
}