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
struct z3fold_pool {int /*<<< orphan*/  lock; } ;
struct z3fold_header {scalar_t__ mapped_count; int /*<<< orphan*/  buddy; int /*<<< orphan*/  refcount; } ;
struct page {int /*<<< orphan*/  lru; int /*<<< orphan*/  private; } ;
typedef  int /*<<< orphan*/  isolate_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  NEEDS_COMPACTING ; 
 int /*<<< orphan*/  PAGE_CLAIMED ; 
 int /*<<< orphan*/  PAGE_HEADLESS ; 
 int /*<<< orphan*/  PAGE_STALE ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct z3fold_header* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC12 (struct z3fold_header*) ; 
 struct z3fold_pool* FUNC13 (struct z3fold_header*) ; 

__attribute__((used)) static bool FUNC14(struct page *page, isolate_mode_t mode)
{
	struct z3fold_header *zhdr;
	struct z3fold_pool *pool;

	FUNC2(!FUNC1(page), page);
	FUNC2(FUNC0(page), page);

	if (FUNC10(PAGE_HEADLESS, &page->private) ||
	    FUNC10(PAGE_CLAIMED, &page->private))
		return false;

	zhdr = FUNC7(page);
	FUNC11(zhdr);
	if (FUNC10(NEEDS_COMPACTING, &page->private) ||
	    FUNC10(PAGE_STALE, &page->private))
		goto out;

	pool = FUNC13(zhdr);

	if (zhdr->mapped_count == 0) {
		FUNC3(&zhdr->refcount);
		if (!FUNC6(&zhdr->buddy))
			FUNC5(&zhdr->buddy);
		FUNC8(&pool->lock);
		if (!FUNC6(&page->lru))
			FUNC4(&page->lru);
		FUNC9(&pool->lock);
		FUNC12(zhdr);
		return true;
	}
out:
	FUNC12(zhdr);
	return false;
}