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
struct z3fold_pool {int dummy; } ;
struct z3fold_header {int cpu; int /*<<< orphan*/  work; int /*<<< orphan*/  buddy; struct z3fold_pool* pool; struct z3fold_buddy_slots* slots; scalar_t__ start_middle; scalar_t__ first_num; scalar_t__ last_chunks; scalar_t__ middle_chunks; scalar_t__ first_chunks; int /*<<< orphan*/  refcount; int /*<<< orphan*/  page_lock; } ;
struct z3fold_buddy_slots {int dummy; } ;
struct page {int /*<<< orphan*/  private; int /*<<< orphan*/  lru; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIDDLE_CHUNK_MAPPED ; 
 int /*<<< orphan*/  NEEDS_COMPACTING ; 
 int /*<<< orphan*/  PAGE_CLAIMED ; 
 int /*<<< orphan*/  PAGE_HEADLESS ; 
 int /*<<< orphan*/  PAGE_STALE ; 
 struct z3fold_buddy_slots* FUNC2 (struct z3fold_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compact_page_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct z3fold_header* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct z3fold_header *FUNC7(struct page *page, bool headless,
					struct z3fold_pool *pool, gfp_t gfp)
{
	struct z3fold_header *zhdr = FUNC5(page);
	struct z3fold_buddy_slots *slots;

	FUNC0(&page->lru);
	FUNC3(PAGE_HEADLESS, &page->private);
	FUNC3(MIDDLE_CHUNK_MAPPED, &page->private);
	FUNC3(NEEDS_COMPACTING, &page->private);
	FUNC3(PAGE_STALE, &page->private);
	FUNC3(PAGE_CLAIMED, &page->private);
	if (headless)
		return zhdr;

	slots = FUNC2(pool, gfp);
	if (!slots)
		return NULL;

	FUNC6(&zhdr->page_lock);
	FUNC4(&zhdr->refcount);
	zhdr->first_chunks = 0;
	zhdr->middle_chunks = 0;
	zhdr->last_chunks = 0;
	zhdr->first_num = 0;
	zhdr->start_middle = 0;
	zhdr->cpu = -1;
	zhdr->slots = slots;
	zhdr->pool = pool;
	FUNC0(&zhdr->buddy);
	FUNC1(&zhdr->work, compact_page_work);
	return zhdr;
}