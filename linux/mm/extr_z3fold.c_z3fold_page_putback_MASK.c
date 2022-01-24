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
struct z3fold_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  lru; int /*<<< orphan*/  pages_nr; } ;
struct z3fold_header {int /*<<< orphan*/  refcount; int /*<<< orphan*/  buddy; } ;
struct page {int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct z3fold_header* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  release_z3fold_page_locked ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC10 (struct z3fold_header*) ; 
 struct z3fold_pool* FUNC11 (struct z3fold_header*) ; 

__attribute__((used)) static void FUNC12(struct page *page)
{
	struct z3fold_header *zhdr;
	struct z3fold_pool *pool;

	zhdr = FUNC6(page);
	pool = FUNC11(zhdr);

	FUNC9(zhdr);
	if (!FUNC5(&zhdr->buddy))
		FUNC4(&zhdr->buddy);
	FUNC0(&page->lru);
	if (FUNC2(&zhdr->refcount, release_z3fold_page_locked)) {
		FUNC1(&pool->pages_nr);
		return;
	}
	FUNC7(&pool->lock);
	FUNC3(&page->lru, &pool->lru);
	FUNC8(&pool->lock);
	FUNC10(zhdr);
}