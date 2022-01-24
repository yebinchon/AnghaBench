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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(u64 mult, u64 div, u64 *base)
{
	u64 tmp, rem;

	tmp = FUNC0(*base, div, &rem);

	if (((int)sizeof(u64)*8 - FUNC2(mult) < FUNC2(tmp)) ||
	    ((int)sizeof(u64)*8 - FUNC2(mult) < FUNC2(rem)))
		return -EOVERFLOW;
	tmp *= mult;
	rem *= mult;

	FUNC1(rem, div);
	*base = tmp + rem;
	return 0;
}