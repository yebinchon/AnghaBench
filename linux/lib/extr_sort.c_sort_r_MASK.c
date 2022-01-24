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
 void FUNC0 (void*,void*,int) ; 
 void FUNC1 (void*,void*,int) ; 
 void FUNC2 (void*,void*,int) ; 
 scalar_t__ FUNC3 (void*,void*,int (*) (void const*,void const*,void const*),void const*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t,void (*) (void*,void*,int)) ; 
 scalar_t__ FUNC5 (void*,size_t,int) ; 
 size_t FUNC6 (size_t,unsigned int const,size_t) ; 

void FUNC7(void *base, size_t num, size_t size,
	    int (*cmp_func)(const void *, const void *, const void *),
	    void (*swap_func)(void *, void *, int size),
	    const void *priv)
{
	/* pre-scale counters for performance */
	size_t n = num * size, a = (num/2) * size;
	const unsigned int lsbit = size & -size;  /* Used to find parent */

	if (!a)		/* num < 2 || size == 0 */
		return;

	if (!swap_func) {
		if (FUNC5(base, size, 8))
			swap_func = SWAP_WORDS_64;
		else if (FUNC5(base, size, 4))
			swap_func = SWAP_WORDS_32;
		else
			swap_func = SWAP_BYTES;
	}

	/*
	 * Loop invariants:
	 * 1. elements [a,n) satisfy the heap property (compare greater than
	 *    all of their children),
	 * 2. elements [n,num*size) are sorted, and
	 * 3. a <= b <= c <= d <= n (whenever they are valid).
	 */
	for (;;) {
		size_t b, c, d;

		if (a)			/* Building heap: sift down --a */
			a -= size;
		else if (n -= size)	/* Sorting: Extract root to --n */
			FUNC4(base, base + n, size, swap_func);
		else			/* Sort complete */
			break;

		/*
		 * Sift element at "a" down into heap.  This is the
		 * "bottom-up" variant, which significantly reduces
		 * calls to cmp_func(): we find the sift-down path all
		 * the way to the leaves (one compare per level), then
		 * backtrack to find where to insert the target element.
		 *
		 * Because elements tend to sift down close to the leaves,
		 * this uses fewer compares than doing two per level
		 * on the way down.  (A bit more than half as many on
		 * average, 3/4 worst-case.)
		 */
		for (b = a; c = 2*b + size, (d = c + size) < n;)
			b = FUNC3(base + c, base + d, cmp_func, priv) >= 0 ? c : d;
		if (d == n)	/* Special case last leaf with no sibling */
			b = c;

		/* Now backtrack from "b" to the correct location for "a" */
		while (b != a && FUNC3(base + a, base + b, cmp_func, priv) >= 0)
			b = FUNC6(b, lsbit, size);
		c = b;			/* Where "a" belongs */
		while (b != a) {	/* Shift it into place */
			b = FUNC6(b, lsbit, size);
			FUNC4(base + b, base + c, size, swap_func);
		}
	}
}