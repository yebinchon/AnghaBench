#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int min_size; } ;
struct rhashtable {TYPE_1__ p; int /*<<< orphan*/  nelems; int /*<<< orphan*/  tbl; } ;
struct bucket_table {unsigned int size; int /*<<< orphan*/  future_tbl; } ;

/* Variables and functions */
 int EEXIST ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rhashtable*,struct bucket_table*,unsigned int) ; 
 struct bucket_table* FUNC2 (int /*<<< orphan*/ ,struct rhashtable*) ; 
 unsigned int FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct rhashtable *ht)
{
	struct bucket_table *old_tbl = FUNC2(ht->tbl, ht);
	unsigned int nelems = FUNC0(&ht->nelems);
	unsigned int size = 0;

	if (nelems)
		size = FUNC3(nelems * 3 / 2);
	if (size < ht->p.min_size)
		size = ht->p.min_size;

	if (old_tbl->size <= size)
		return 0;

	if (FUNC2(old_tbl->future_tbl, ht))
		return -EEXIST;

	return FUNC1(ht, old_tbl, size);
}