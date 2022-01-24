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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (void const*) ; 
 void* FUNC2 (void const*) ; 

void FUNC3(const void *address, size_t size, u8 value)
{
	void *shadow_start, *shadow_end;

	/*
	 * Perform shadow offset calculation based on untagged address, as
	 * some of the callers (e.g. kasan_poison_object_data) pass tagged
	 * addresses to this function.
	 */
	address = FUNC2(address);

	shadow_start = FUNC1(address);
	shadow_end = FUNC1(address + size);

	FUNC0(shadow_start, value, shadow_end - shadow_start);
}