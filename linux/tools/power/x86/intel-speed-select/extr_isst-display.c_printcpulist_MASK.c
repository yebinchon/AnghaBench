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
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int FUNC3 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC4(int str_len, char *str, int mask_size,
			 cpu_set_t *cpu_mask)
{
	int i, first, curr_index, index;

	if (!FUNC0(mask_size, cpu_mask)) {
		FUNC3(str, str_len, "none");
		return;
	}

	curr_index = 0;
	first = 1;
	for (i = 0; i < FUNC2(); ++i) {
		if (!FUNC1(i, mask_size, cpu_mask))
			continue;
		if (!first) {
			index = FUNC3(&str[curr_index],
					 str_len - curr_index, ",");
			curr_index += index;
		}
		index = FUNC3(&str[curr_index], str_len - curr_index, "%d",
				 i);
		curr_index += index;
		first = 0;
	}
}