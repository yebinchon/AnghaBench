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
struct z3fold_pool {int /*<<< orphan*/  compact_wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  lru; } ;
struct z3fold_header {scalar_t__ mapped_count; int /*<<< orphan*/  work; int /*<<< orphan*/  cpu; scalar_t__ middle_chunks; scalar_t__ last_chunks; scalar_t__ first_chunks; int /*<<< orphan*/  buddy; int /*<<< orphan*/  page_lock; } ;
struct page {int /*<<< orphan*/  lru; scalar_t__ private; } ;
struct address_space {int dummy; } ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  FIRST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LAST ; 
 int /*<<< orphan*/  MIDDLE ; 
 int /*<<< orphan*/  NEEDS_COMPACTING ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct address_space*) ; 
 int /*<<< orphan*/  compact_page_work ; 
 int /*<<< orphan*/  FUNC9 (struct z3fold_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct z3fold_header*,struct z3fold_header*,int /*<<< orphan*/ ) ; 
 struct z3fold_header* FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 struct address_space* FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC25 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC26 (struct z3fold_header*) ; 
 struct z3fold_pool* FUNC27 (struct z3fold_header*) ; 

__attribute__((used)) static int FUNC28(struct address_space *mapping, struct page *newpage,
			       struct page *page, enum migrate_mode mode)
{
	struct z3fold_header *zhdr, *new_zhdr;
	struct z3fold_pool *pool;
	struct address_space *new_mapping;

	FUNC6(!FUNC5(page), page);
	FUNC6(!FUNC3(page), page);
	FUNC6(!FUNC4(newpage), newpage);

	zhdr = FUNC13(page);
	pool = FUNC27(zhdr);

	if (!FUNC25(zhdr)) {
		return -EAGAIN;
	}
	if (zhdr->mapped_count != 0) {
		FUNC26(zhdr);
		return -EBUSY;
	}
	if (FUNC23(&zhdr->work)) {
		FUNC26(zhdr);
		return -EAGAIN;
	}
	new_zhdr = FUNC13(newpage);
	FUNC12(new_zhdr, zhdr, PAGE_SIZE);
	newpage->private = page->private;
	page->private = 0;
	FUNC26(zhdr);
	FUNC21(&new_zhdr->page_lock);
	FUNC2(&new_zhdr->work, compact_page_work);
	/*
	 * z3fold_page_isolate() ensures that new_zhdr->buddy is empty,
	 * so we only have to reinitialize it.
	 */
	FUNC1(&new_zhdr->buddy);
	new_mapping = FUNC15(page);
	FUNC7(page);
	FUNC0(page);

	FUNC10(newpage);
	FUNC24(new_zhdr);
	if (new_zhdr->first_chunks)
		FUNC9(new_zhdr, FIRST);
	if (new_zhdr->last_chunks)
		FUNC9(new_zhdr, LAST);
	if (new_zhdr->middle_chunks)
		FUNC9(new_zhdr, MIDDLE);
	FUNC18(NEEDS_COMPACTING, &newpage->private);
	new_zhdr->cpu = FUNC19();
	FUNC20(&pool->lock);
	FUNC11(&newpage->lru, &pool->lru);
	FUNC22(&pool->lock);
	FUNC8(newpage, new_mapping);
	FUNC26(new_zhdr);

	FUNC17(new_zhdr->cpu, pool->compact_wq, &new_zhdr->work);

	FUNC14(page);
	FUNC16(page);
	return 0;
}