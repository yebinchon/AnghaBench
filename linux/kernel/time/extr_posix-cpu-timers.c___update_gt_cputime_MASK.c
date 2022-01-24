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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  atomic64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(atomic64_t *cputime, u64 sum_cputime)
{
	u64 curr_cputime;
retry:
	curr_cputime = FUNC1(cputime);
	if (sum_cputime > curr_cputime) {
		if (FUNC0(cputime, curr_cputime, sum_cputime) != curr_cputime)
			goto retry;
	}
}