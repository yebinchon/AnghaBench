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
struct primes {unsigned long last; unsigned long sz; int /*<<< orphan*/  primes; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GFP_KERNEL ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned long,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct primes*) ; 
 int /*<<< orphan*/  FUNC7 (struct primes*,int /*<<< orphan*/ ) ; 
 struct primes* FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  primes ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct primes*) ; 
 struct primes* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC14 (unsigned long,int /*<<< orphan*/ ) ; 
 struct primes const small_primes ; 

__attribute__((used)) static bool FUNC15(unsigned long x)
{
	const struct primes *p;
	struct primes *new;
	unsigned long sz, y;

	/* Betrand's Postulate (or Chebyshev's theorem) states that if n > 3,
	 * there is always at least one prime p between n and 2n - 2.
	 * Equivalently, if n > 1, then there is always at least one prime p
	 * such that n < p < 2n.
	 *
	 * http://mathworld.wolfram.com/BertrandsPostulate.html
	 * https://en.wikipedia.org/wiki/Bertrand's_postulate
	 */
	sz = 2 * x;
	if (sz < x)
		return false;

	sz = FUNC14(sz, BITS_PER_LONG);
	new = FUNC8(sizeof(*new) + FUNC3(sz),
		      GFP_KERNEL | __GFP_NOWARN);
	if (!new)
		return false;

	FUNC10(&lock);
	p = FUNC13(primes, FUNC9(&lock));
	if (x < p->last) {
		FUNC6(new);
		goto unlock;
	}

	/* Where memory permits, track the primes using the
	 * Sieve of Eratosthenes. The sieve is to remove all multiples of known
	 * primes from the set, what remains in the set is therefore prime.
	 */
	FUNC2(new->primes, sz);
	FUNC1(new->primes, p->primes, p->sz);
	for (y = 2UL; y < sz; y = FUNC5(new->primes, sz, y + 1))
		new->last = FUNC4(y, new->primes, p->sz, sz);
	new->sz = sz;

	FUNC0(new->last <= x);

	FUNC12(primes, new);
	if (p != &small_primes)
		FUNC7((struct primes *)p, rcu);

unlock:
	FUNC11(&lock);
	return true;
}