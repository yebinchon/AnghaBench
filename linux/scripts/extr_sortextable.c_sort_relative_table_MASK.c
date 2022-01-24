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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  compare_relative_table ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(char *extab_image, int image_size)
{
	int i;

	/*
	 * Do the same thing the runtime sort does, first normalize to
	 * being relative to the start of the section.
	 */
	i = 0;
	while (i < image_size) {
		uint32_t *loc = (uint32_t *)(extab_image + i);
		FUNC2(FUNC1(loc) + i, loc);
		i += 4;
	}

	FUNC0(extab_image, image_size / 8, 8, compare_relative_table);

	/* Now denormalize. */
	i = 0;
	while (i < image_size) {
		uint32_t *loc = (uint32_t *)(extab_image + i);
		FUNC2(FUNC1(loc) - i, loc);
		i += 4;
	}
}