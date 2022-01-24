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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ ULONG_MAX ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long) ; 

u32 FUNC2(u64 x)
{
	u64 b, m, y = 0;

	if (x <= ULONG_MAX)
		return FUNC1((unsigned long) x);

	m = 1ULL << ((FUNC0(x) - 1) & ~1ULL);
	while (m != 0) {
		b = y + m;
		y >>= 1;

		if (x >= b) {
			x -= b;
			y += m;
		}
		m >>= 2;
	}

	return y;
}