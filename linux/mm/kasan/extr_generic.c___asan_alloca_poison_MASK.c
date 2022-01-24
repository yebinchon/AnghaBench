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
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  KASAN_ALLOCA_LEFT ; 
 scalar_t__ KASAN_ALLOCA_REDZONE_SIZE ; 
 int /*<<< orphan*/  KASAN_ALLOCA_RIGHT ; 
 scalar_t__ KASAN_SHADOW_SCALE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const*,size_t) ; 
 size_t FUNC4 (size_t,scalar_t__) ; 
 size_t FUNC5 (size_t,scalar_t__) ; 

void FUNC6(unsigned long addr, size_t size)
{
	size_t rounded_up_size = FUNC5(size, KASAN_SHADOW_SCALE_SIZE);
	size_t padding_size = FUNC5(size, KASAN_ALLOCA_REDZONE_SIZE) -
			rounded_up_size;
	size_t rounded_down_size = FUNC4(size, KASAN_SHADOW_SCALE_SIZE);

	const void *left_redzone = (const void *)(addr -
			KASAN_ALLOCA_REDZONE_SIZE);
	const void *right_redzone = (const void *)(addr + rounded_up_size);

	FUNC1(!FUNC0(addr, KASAN_ALLOCA_REDZONE_SIZE));

	FUNC3((const void *)(addr + rounded_down_size),
			      size - rounded_down_size);
	FUNC2(left_redzone, KASAN_ALLOCA_REDZONE_SIZE,
			KASAN_ALLOCA_LEFT);
	FUNC2(right_redzone,
			padding_size + KASAN_ALLOCA_REDZONE_SIZE,
			KASAN_ALLOCA_RIGHT);
}