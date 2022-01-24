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

	i = 0;
	while (i < image_size) {
		uint32_t *loc = (uint32_t *)(extab_image + i);

		FUNC2(FUNC1(loc) + i, loc);
		FUNC2(FUNC1(loc + 1) + i + 4, loc + 1);
		FUNC2(FUNC1(loc + 2) + i + 8, loc + 2);

		i += sizeof(uint32_t) * 3;
	}

	FUNC0(extab_image, image_size / 12, 12, compare_relative_table);

	i = 0;
	while (i < image_size) {
		uint32_t *loc = (uint32_t *)(extab_image + i);

		FUNC2(FUNC1(loc) - i, loc);
		FUNC2(FUNC1(loc + 1) - (i + 4), loc + 1);
		FUNC2(FUNC1(loc + 2) - (i + 8), loc + 2);

		i += sizeof(uint32_t) * 3;
	}
}