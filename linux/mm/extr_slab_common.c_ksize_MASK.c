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
 scalar_t__ FUNC0 (int) ; 
 void const* ZERO_SIZE_PTR ; 
 int /*<<< orphan*/  FUNC1 (void const*,int) ; 
 size_t FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (void const*,size_t) ; 
 scalar_t__ FUNC4 (int) ; 

size_t FUNC5(const void *objp)
{
	size_t size;

	if (FUNC0(!objp))
		return 0;
	/*
	 * We need to check that the pointed to object is valid, and only then
	 * unpoison the shadow memory below. We use __kasan_check_read(), to
	 * generate a more useful report at the time ksize() is called (rather
	 * than later where behaviour is undefined due to potential
	 * use-after-free or double-free).
	 *
	 * If the pointed to memory is invalid we return 0, to avoid users of
	 * ksize() writing to and potentially corrupting the memory region.
	 *
	 * We want to perform the check before __ksize(), to avoid potentially
	 * crashing in __ksize() due to accessing invalid metadata.
	 */
	if (FUNC4(objp == ZERO_SIZE_PTR) || !FUNC1(objp, 1))
		return 0;

	size = FUNC2(objp);
	/*
	 * We assume that ksize callers could use whole allocated area,
	 * so we need to unpoison this area.
	 */
	FUNC3(objp, size);
	return size;
}