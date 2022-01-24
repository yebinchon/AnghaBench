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
struct gen_pool_chunk {unsigned long start_addr; unsigned long end_addr; int /*<<< orphan*/  next_chunk; int /*<<< orphan*/  avail; void* owner; int /*<<< orphan*/  phys_addr; } ;
struct gen_pool {size_t min_alloc_order; int /*<<< orphan*/  lock; int /*<<< orphan*/  chunks; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct gen_pool_chunk* FUNC6 (int,int) ; 

int FUNC7(struct gen_pool *pool, unsigned long virt, phys_addr_t phys,
		 size_t size, int nid, void *owner)
{
	struct gen_pool_chunk *chunk;
	int nbits = size >> pool->min_alloc_order;
	int nbytes = sizeof(struct gen_pool_chunk) +
				FUNC0(nbits) * sizeof(long);

	chunk = FUNC6(nbytes, nid);
	if (FUNC5(chunk == NULL))
		return -ENOMEM;

	chunk->phys_addr = phys;
	chunk->start_addr = virt;
	chunk->end_addr = virt + size - 1;
	chunk->owner = owner;
	FUNC1(&chunk->avail, size);

	FUNC3(&pool->lock);
	FUNC2(&chunk->next_chunk, &pool->chunks);
	FUNC4(&pool->lock);

	return 0;
}