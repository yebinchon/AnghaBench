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
struct zbud_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/ * unbuddied; int /*<<< orphan*/  pages_nr; } ;
struct zbud_header {scalar_t__ last_chunks; scalar_t__ first_chunks; int /*<<< orphan*/  buddy; int /*<<< orphan*/  lru; scalar_t__ under_reclaim; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long ZHDR_SIZE_ALIGNED ; 
 int /*<<< orphan*/  FUNC0 (struct zbud_header*) ; 
 struct zbud_header* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct zbud_header*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct zbud_pool *pool, unsigned long handle)
{
	struct zbud_header *zhdr;
	int freechunks;

	FUNC5(&pool->lock);
	zhdr = FUNC1(handle);

	/* If first buddy, handle will be page aligned */
	if ((handle - ZHDR_SIZE_ALIGNED) & ~PAGE_MASK)
		zhdr->last_chunks = 0;
	else
		zhdr->first_chunks = 0;

	if (zhdr->under_reclaim) {
		/* zbud page is under reclaim, reclaim will free */
		FUNC6(&pool->lock);
		return;
	}

	/* Remove from existing buddy list */
	FUNC3(&zhdr->buddy);

	if (zhdr->first_chunks == 0 && zhdr->last_chunks == 0) {
		/* zbud page is empty, free */
		FUNC3(&zhdr->lru);
		FUNC0(zhdr);
		pool->pages_nr--;
	} else {
		/* Add to unbuddied list */
		freechunks = FUNC4(zhdr);
		FUNC2(&zhdr->buddy, &pool->unbuddied[freechunks]);
	}

	FUNC6(&pool->lock);
}