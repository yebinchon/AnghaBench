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

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

unsigned long FUNC2(unsigned long a, unsigned long b)
{
	unsigned long r = a | b;

	if (!a || !b)
		return r;

	b >>= FUNC0(b);
	if (b == 1)
		return r & -r;

	for (;;) {
		a >>= FUNC0(a);
		if (a == 1)
			return r & -r;
		if (a == b)
			return a << FUNC0(r);

		if (a < b)
			FUNC1(a, b);
		a -= b;
	}
}