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
struct primes {unsigned long last; int /*<<< orphan*/  primes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  primes ; 
 struct primes* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (unsigned long) ; 

unsigned long FUNC6(unsigned long x)
{
	const struct primes *p;

	FUNC3();
	p = FUNC2(primes);
	while (x >= p->last) {
		FUNC4();

		if (!FUNC0(x))
			return FUNC5(x);

		FUNC3();
		p = FUNC2(primes);
	}
	x = FUNC1(p->primes, p->last, x + 1);
	FUNC4();

	return x;
}