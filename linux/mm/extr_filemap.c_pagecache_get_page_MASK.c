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
struct page {int /*<<< orphan*/  index; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct address_space* mapping; } ;

/* Variables and functions */
 int EEXIST ; 
 int FGP_ACCESSED ; 
 int FGP_CREAT ; 
 int FGP_FOR_MMAP ; 
 int FGP_LOCK ; 
 int FGP_NOFS ; 
 int FGP_NOWAIT ; 
 int FGP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,struct page*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  __GFP_FS ; 
 int /*<<< orphan*/  __GFP_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 

struct page *FUNC15(struct address_space *mapping, pgoff_t offset,
	int fgp_flags, gfp_t gfp_mask)
{
	struct page *page;

repeat:
	page = FUNC6(mapping, offset);
	if (FUNC14(page))
		page = NULL;
	if (!page)
		goto no_page;

	if (fgp_flags & FGP_LOCK) {
		if (fgp_flags & FGP_NOWAIT) {
			if (!FUNC11(page)) {
				FUNC10(page);
				return NULL;
			}
		} else {
			FUNC7(page);
		}

		/* Has the page been truncated? */
		if (FUNC12(FUNC5(page)->mapping != mapping)) {
			FUNC13(page);
			FUNC10(page);
			goto repeat;
		}
		FUNC0(page->index != offset, page);
	}

	if (fgp_flags & FGP_ACCESSED)
		FUNC9(page);

no_page:
	if (!page && (fgp_flags & FGP_CREAT)) {
		int err;
		if ((fgp_flags & FGP_WRITE) && FUNC8(mapping))
			gfp_mask |= __GFP_WRITE;
		if (fgp_flags & FGP_NOFS)
			gfp_mask &= ~__GFP_FS;

		page = FUNC3(gfp_mask);
		if (!page)
			return NULL;

		if (FUNC1(!(fgp_flags & (FGP_LOCK | FGP_FOR_MMAP))))
			fgp_flags |= FGP_LOCK;

		/* Init accessed so avoid atomic mark_page_accessed later */
		if (fgp_flags & FGP_ACCESSED)
			FUNC2(page);

		err = FUNC4(page, mapping, offset, gfp_mask);
		if (FUNC12(err)) {
			FUNC10(page);
			page = NULL;
			if (err == -EEXIST)
				goto repeat;
		}

		/*
		 * add_to_page_cache_lru locks the page, and for mmap we expect
		 * an unlocked page.
		 */
		if (page && (fgp_flags & FGP_FOR_MMAP))
			FUNC13(page);
	}

	return page;
}