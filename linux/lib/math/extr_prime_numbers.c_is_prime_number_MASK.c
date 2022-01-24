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
struct primes {unsigned long sz; int /*<<< orphan*/  primes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  primes ; 
 struct primes* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

bool FUNC6(unsigned long x)
{
	const struct primes *p;
	bool result;

	FUNC2();
	p = FUNC1(primes);
	while (x >= p->sz) {
		FUNC3();

		if (!FUNC0(x))
			return FUNC4(x);

		FUNC2();
		p = FUNC1(primes);
	}
	result = FUNC5(x, p->primes);
	FUNC3();

	return result;
}