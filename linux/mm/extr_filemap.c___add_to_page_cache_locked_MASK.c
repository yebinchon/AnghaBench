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
struct page {struct address_space* mapping; int /*<<< orphan*/  index; } ;
struct mem_cgroup {int dummy; } ;
struct address_space {int /*<<< orphan*/  nrpages; int /*<<< orphan*/  nrexceptional; int /*<<< orphan*/  i_pages; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int GFP_RECLAIM_MASK ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct address_space*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct mem_cgroup*,int,int) ; 
 int FUNC10 (struct page*,int /*<<< orphan*/ ,int,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (void*) ; 
 int /*<<< orphan*/  xas ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct page *page,
				      struct address_space *mapping,
				      pgoff_t offset, gfp_t gfp_mask,
				      void **shadowp)
{
	FUNC4(xas, &mapping->i_pages, offset);
	int huge = FUNC0(page);
	struct mem_cgroup *memcg;
	int error;
	void *old;

	FUNC3(!FUNC1(page), page);
	FUNC3(FUNC2(page), page);
	FUNC7(&xas, mapping);

	if (!huge) {
		error = FUNC10(page, current->mm,
					      gfp_mask, &memcg, false);
		if (error)
			return error;
	}

	FUNC6(page);
	page->mapping = mapping;
	page->index = offset;

	do {
		FUNC16(&xas);
		old = FUNC15(&xas);
		if (old && !FUNC13(old))
			FUNC18(&xas, -EEXIST);
		FUNC19(&xas, page);
		if (FUNC14(&xas))
			goto unlock;

		if (FUNC13(old)) {
			mapping->nrexceptional--;
			if (shadowp)
				*shadowp = old;
		}
		mapping->nrpages++;

		/* hugetlb pages do not participate in page cache accounting */
		if (!huge)
			FUNC5(page, NR_FILE_PAGES);
unlock:
		FUNC20(&xas);
	} while (FUNC17(&xas, gfp_mask & GFP_RECLAIM_MASK));

	if (FUNC14(&xas))
		goto error;

	if (!huge)
		FUNC9(page, memcg, false, false);
	FUNC12(page);
	return 0;
error:
	page->mapping = NULL;
	/* Leave page->index set: truncation relies upon it */
	if (!huge)
		FUNC8(page, memcg, false);
	FUNC11(page);
	return FUNC14(&xas);
}