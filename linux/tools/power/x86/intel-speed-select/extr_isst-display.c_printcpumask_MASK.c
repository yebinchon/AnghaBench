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
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ *) ; 
 unsigned int* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 
 int FUNC4 () ; 
 int FUNC5 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void FUNC7(int str_len, char *str, int mask_size,
			 cpu_set_t *cpu_mask)
{
	int i, max_cpus = FUNC4();
	unsigned int *mask;
	int size, index, curr_index;

	size = max_cpus / (sizeof(unsigned int) * 8);
	if (max_cpus % (sizeof(unsigned int) * 8))
		size++;

	mask = FUNC2(size, sizeof(unsigned int));
	if (!mask)
		return;

	for (i = 0; i < max_cpus; ++i) {
		int mask_index, bit_index;

		if (!FUNC1(i, mask_size, cpu_mask))
			continue;

		mask_index = i / (sizeof(unsigned int) * 8);
		bit_index = i % (sizeof(unsigned int) * 8);
		mask[mask_index] |= FUNC0(bit_index);
	}

	curr_index = 0;
	for (i = size - 1; i >= 0; --i) {
		index = FUNC5(&str[curr_index], str_len - curr_index, "%08x",
				 mask[i]);
		curr_index += index;
		if (i) {
			FUNC6(&str[curr_index], ",", str_len - curr_index);
			curr_index++;
		}
	}

	FUNC3(mask);
}