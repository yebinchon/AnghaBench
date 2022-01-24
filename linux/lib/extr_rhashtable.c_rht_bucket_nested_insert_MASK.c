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
struct rhashtable {int dummy; } ;
struct rhash_lock_head {int dummy; } ;
struct bucket_table {int nest; unsigned int size; int /*<<< orphan*/ * buckets; } ;

/* Variables and functions */
 unsigned int PAGE_SHIFT ; 
 unsigned int FUNC0 (int) ; 
 union nested_table* FUNC1 (struct rhashtable*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

struct rhash_lock_head **FUNC3(struct rhashtable *ht,
						  struct bucket_table *tbl,
						  unsigned int hash)
{
	const unsigned int shift = PAGE_SHIFT - FUNC0(sizeof(void *));
	unsigned int index = hash & ((1 << tbl->nest) - 1);
	unsigned int size = tbl->size >> tbl->nest;
	union nested_table *ntbl;

	ntbl = (union nested_table *)FUNC2(tbl->buckets[0]);
	hash >>= tbl->nest;
	ntbl = FUNC1(ht, &ntbl[index].table,
				  size <= (1 << shift));

	while (ntbl && size > (1 << shift)) {
		index = hash & ((1 << shift) - 1);
		size >>= shift;
		hash >>= shift;
		ntbl = FUNC1(ht, &ntbl[index].table,
					  size <= (1 << shift));
	}

	if (!ntbl)
		return NULL;

	return &ntbl[hash].bucket;

}