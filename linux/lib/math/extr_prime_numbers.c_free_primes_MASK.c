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
struct primes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct primes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  primes ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct primes const*) ; 
 struct primes* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct primes const small_primes ; 

__attribute__((used)) static void FUNC6(void)
{
	const struct primes *p;

	FUNC2(&lock);
	p = FUNC5(primes, FUNC1(&lock));
	if (p != &small_primes) {
		FUNC4(primes, &small_primes);
		FUNC0((struct primes *)p, rcu);
	}
	FUNC3(&lock);
}