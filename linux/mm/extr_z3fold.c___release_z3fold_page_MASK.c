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
struct z3fold_pool {int /*<<< orphan*/  stale_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  release_wq; int /*<<< orphan*/  stale; int /*<<< orphan*/  lock; } ;
struct z3fold_header {int /*<<< orphan*/  buddy; } ;
struct page {int /*<<< orphan*/  lru; int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEEDS_COMPACTING ; 
 int /*<<< orphan*/  PAGE_STALE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct page* FUNC9 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC10 (struct z3fold_header*) ; 
 struct z3fold_pool* FUNC11 (struct z3fold_header*) ; 

__attribute__((used)) static void FUNC12(struct z3fold_header *zhdr, bool locked)
{
	struct page *page = FUNC9(zhdr);
	struct z3fold_pool *pool = FUNC11(zhdr);

	FUNC0(!FUNC4(&zhdr->buddy));
	FUNC6(PAGE_STALE, &page->private);
	FUNC1(NEEDS_COMPACTING, &page->private);
	FUNC7(&pool->lock);
	if (!FUNC4(&page->lru))
		FUNC3(&page->lru);
	FUNC8(&pool->lock);
	if (locked)
		FUNC10(zhdr);
	FUNC7(&pool->stale_lock);
	FUNC2(&zhdr->buddy, &pool->stale);
	FUNC5(pool->release_wq, &pool->work);
	FUNC8(&pool->stale_lock);
}