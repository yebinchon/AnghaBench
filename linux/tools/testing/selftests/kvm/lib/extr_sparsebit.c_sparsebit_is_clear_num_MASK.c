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
typedef  scalar_t__ sparsebit_num_t ;
typedef  scalar_t__ sparsebit_idx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sparsebit*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct sparsebit*,scalar_t__) ; 

bool FUNC3(struct sparsebit *s,
	sparsebit_idx_t idx, sparsebit_num_t num)
{
	sparsebit_idx_t next_set;

	FUNC0(num > 0);
	FUNC0(idx + num - 1 >= idx);

	/* With num > 0, the first bit must be cleared. */
	if (!FUNC1(s, idx))
		return false;

	/* Find the next set bit */
	next_set = FUNC2(s, idx);

	/*
	 * If no set bits beyond idx, then there are at least num
	 * cleared bits. idx + num doesn't wrap.  Otherwise check if
	 * there are enough cleared bits between idx and the next set bit.
	 */
	return next_set == 0 || next_set - idx >= num;
}