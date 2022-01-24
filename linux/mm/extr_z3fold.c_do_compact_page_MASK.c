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
struct z3fold_pool {int /*<<< orphan*/  pages_nr; int /*<<< orphan*/  lock; } ;
struct z3fold_header {int /*<<< orphan*/  refcount; int /*<<< orphan*/  buddy; } ;
struct page {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEEDS_COMPACTING ; 
 int /*<<< orphan*/  PAGE_CLAIMED ; 
 int /*<<< orphan*/  PAGE_STALE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct z3fold_pool*,struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  release_z3fold_page_locked ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 struct page* FUNC11 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC12 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC13 (struct z3fold_header*) ; 
 int FUNC14 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC15 (struct z3fold_header*) ; 
 struct z3fold_pool* FUNC16 (struct z3fold_header*) ; 

__attribute__((used)) static void FUNC17(struct z3fold_header *zhdr, bool locked)
{
	struct z3fold_pool *pool = FUNC16(zhdr);
	struct page *page;

	page = FUNC11(zhdr);
	if (locked)
		FUNC1(FUNC14(zhdr));
	else
		FUNC13(zhdr);
	if (FUNC1(!FUNC8(NEEDS_COMPACTING, &page->private))) {
		FUNC15(zhdr);
		return;
	}
	FUNC6(&pool->lock);
	FUNC5(&zhdr->buddy);
	FUNC7(&pool->lock);

	if (FUNC4(&zhdr->refcount, release_z3fold_page_locked)) {
		FUNC3(&pool->pages_nr);
		return;
	}

	if (FUNC10(FUNC0(page) ||
		     FUNC9(PAGE_CLAIMED, &page->private) ||
		     FUNC9(PAGE_STALE, &page->private))) {
		FUNC15(zhdr);
		return;
	}

	FUNC12(zhdr);
	FUNC2(pool, zhdr);
	FUNC15(zhdr);
}