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
struct page {int /*<<< orphan*/  mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int (* readpage ) (void*,struct page*) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 struct page* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (void*,struct page*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 struct page* FUNC13 (struct page*) ; 

__attribute__((used)) static struct page *FUNC14(struct address_space *mapping,
				pgoff_t index,
				int (*filler)(void *, struct page *),
				void *data,
				gfp_t gfp)
{
	struct page *page;
	int err;
repeat:
	page = FUNC5(mapping, index);
	if (!page) {
		page = FUNC3(gfp);
		if (!page)
			return FUNC0(-ENOMEM);
		err = FUNC4(page, mapping, index, gfp);
		if (FUNC10(err)) {
			FUNC8(page);
			if (err == -EEXIST)
				goto repeat;
			/* Presumably ENOMEM for xarray node */
			return FUNC0(err);
		}

filler:
		if (filler)
			err = filler(data, page);
		else
			err = mapping->a_ops->readpage(data, page);

		if (err < 0) {
			FUNC8(page);
			return FUNC0(err);
		}

		page = FUNC13(page);
		if (FUNC1(page))
			return page;
		goto out;
	}
	if (FUNC2(page))
		goto out;

	/*
	 * Page is not up to date and may be locked due one of the following
	 * case a: Page is being filled and the page lock is held
	 * case b: Read/write error clearing the page uptodate status
	 * case c: Truncation in progress (page locked)
	 * case d: Reclaim in progress
	 *
	 * Case a, the page will be up to date when the page is unlocked.
	 *    There is no need to serialise on the page lock here as the page
	 *    is pinned so the lock gives no additional protection. Even if the
	 *    the page is truncated, the data is still valid if PageUptodate as
	 *    it's a race vs truncate race.
	 * Case b, the page will not be up to date
	 * Case c, the page may be truncated but in itself, the data may still
	 *    be valid after IO completes as it's a read vs truncate race. The
	 *    operation must restart if the page is not uptodate on unlock but
	 *    otherwise serialising on page lock to stabilise the mapping gives
	 *    no additional guarantees to the caller as the page lock is
	 *    released before return.
	 * Case d, similar to truncation. If reclaim holds the page lock, it
	 *    will be a race with remove_mapping that determines if the mapping
	 *    is valid on unlock but otherwise the data is valid and there is
	 *    no need to serialise with page lock.
	 *
	 * As the page lock gives no additional guarantee, we optimistically
	 * wait on the page to be unlocked and check if it's up to date and
	 * use the page if it is. Otherwise, the page lock is required to
	 * distinguish between the different cases. The motivation is that we
	 * avoid spurious serialisations and wakeups when multiple processes
	 * wait on the same page for IO to complete.
	 */
	FUNC12(page);
	if (FUNC2(page))
		goto out;

	/* Distinguish between all the cases under the safety of the lock */
	FUNC6(page);

	/* Case c or d, restart the operation */
	if (!page->mapping) {
		FUNC11(page);
		FUNC8(page);
		goto repeat;
	}

	/* Someone else locked and filled the page in a very small window */
	if (FUNC2(page)) {
		FUNC11(page);
		goto out;
	}
	goto filler;

out:
	FUNC7(page);
	return page;
}