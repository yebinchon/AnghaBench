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
struct sparsebit {int dummy; } ;
typedef  int sparsebit_num_t ;
typedef  int sparsebit_idx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sparsebit*,int) ; 
 scalar_t__ FUNC2 (struct sparsebit*,int,int) ; 
 int FUNC3 (struct sparsebit*,int) ; 
 int FUNC4 (struct sparsebit*,int) ; 

sparsebit_idx_t FUNC5(struct sparsebit *s,
	sparsebit_idx_t start, sparsebit_num_t num)
{
	sparsebit_idx_t idx;

	FUNC0(num >= 1);

	for (idx = FUNC4(s, start);
		idx != 0 && idx + num - 1 >= idx;
		idx = FUNC4(s, idx)) {
		FUNC0(FUNC1(s, idx));

		/*
		 * Does the sequence of bits starting at idx consist of
		 * num set bits?
		 */
		if (FUNC2(s, idx, num))
			return idx;

		/*
		 * Sequence of set bits at idx isn't large enough.
		 * Skip this entire sequence of set bits.
		 */
		idx = FUNC3(s, idx);
		if (idx == 0)
			return 0;
	}

	return 0;
}