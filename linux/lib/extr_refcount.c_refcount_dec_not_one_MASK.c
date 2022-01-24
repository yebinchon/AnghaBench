#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ refcount_t ;

/* Variables and functions */
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*,unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 

bool FUNC4(refcount_t *r)
{
	unsigned int new, val = FUNC1(&r->refs);

	do {
		if (FUNC3(val == UINT_MAX))
			return true;

		if (val == 1)
			return false;

		new = val - 1;
		if (new > val) {
			FUNC0(new > val, "refcount_t: underflow; use-after-free.\n");
			return true;
		}

	} while (!FUNC2(&r->refs, &val, new));

	return true;
}