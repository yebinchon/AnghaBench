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
union nested_table {struct rhash_lock_head* bucket; int /*<<< orphan*/  table; } ;
struct rhash_lock_head {int dummy; } ;
struct bucket_table {int nest; unsigned int size; int /*<<< orphan*/ * buckets; } ;

/* Variables and functions */
 unsigned int PAGE_SHIFT ; 
 unsigned int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 union nested_table* FUNC2 (int /*<<< orphan*/ ,struct bucket_table const*,unsigned int) ; 

struct rhash_lock_head **FUNC3(const struct bucket_table *tbl,
					     unsigned int hash)
{
	const unsigned int shift = PAGE_SHIFT - FUNC0(sizeof(void *));
	unsigned int index = hash & ((1 << tbl->nest) - 1);
	unsigned int size = tbl->size >> tbl->nest;
	unsigned int subhash = hash;
	union nested_table *ntbl;

	ntbl = (union nested_table *)FUNC1(tbl->buckets[0]);
	ntbl = FUNC2(ntbl[index].table, tbl, hash);
	subhash >>= tbl->nest;

	while (ntbl && size > (1 << shift)) {
		index = subhash & ((1 << shift) - 1);
		ntbl = FUNC2(ntbl[index].table,
						  tbl, hash);
		size >>= shift;
		subhash >>= shift;
	}

	if (!ntbl)
		return NULL;

	return &ntbl[subhash].bucket;

}