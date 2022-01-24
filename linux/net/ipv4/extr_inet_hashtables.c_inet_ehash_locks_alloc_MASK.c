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
struct inet_hashinfo {unsigned int ehash_locks_mask; int /*<<< orphan*/ * ehash_locks; scalar_t__ ehash_mask; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int L1_CACHE_BYTES ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,scalar_t__) ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct inet_hashinfo *hashinfo)
{
	unsigned int locksz = sizeof(spinlock_t);
	unsigned int i, nblocks = 1;

	if (locksz != 0) {
		/* allocate 2 cache lines or at least one spinlock per cpu */
		nblocks = FUNC1(2U * L1_CACHE_BYTES / locksz, 1U);
		nblocks = FUNC4(nblocks * FUNC3());

		/* no more locks than number of hash buckets */
		nblocks = FUNC2(nblocks, hashinfo->ehash_mask + 1);

		hashinfo->ehash_locks = FUNC0(nblocks, locksz, GFP_KERNEL);
		if (!hashinfo->ehash_locks)
			return -ENOMEM;

		for (i = 0; i < nblocks; i++)
			FUNC5(&hashinfo->ehash_locks[i]);
	}
	hashinfo->ehash_locks_mask = nblocks - 1;
	return 0;
}