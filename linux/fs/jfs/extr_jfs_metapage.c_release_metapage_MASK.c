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
struct page {int dummy; } ;
struct metapage {scalar_t__ lsn; int /*<<< orphan*/  sb; int /*<<< orphan*/  flag; scalar_t__ nohomeok; scalar_t__ count; struct page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  META_dirty ; 
 int /*<<< orphan*/  META_sync ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct metapage*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct metapage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (struct page*) ; 

void FUNC14(struct metapage * mp)
{
	struct page *page = mp->page;
	FUNC5("release_metapage: mp = 0x%p, flag = 0x%lx", mp, mp->flag);

	FUNC0(!page);

	FUNC6(page);
	FUNC11(mp);

	FUNC1(mp->count);
	if (--mp->count || mp->nohomeok) {
		FUNC12(page);
		FUNC7(page);
		return;
	}

	if (FUNC10(META_dirty, &mp->flag)) {
		FUNC9(page);
		if (FUNC10(META_sync, &mp->flag)) {
			FUNC2(META_sync, &mp->flag);
			if (FUNC13(page))
				FUNC4(mp->sb, "write_one_page() failed\n");
			FUNC6(page); /* write_one_page unlocks the page */
		}
	} else if (mp->lsn)	/* discard_metapage doesn't remove it */
		FUNC8(mp);

	/* Try to keep metapages from using up too much memory */
	FUNC3(page, mp);

	FUNC12(page);
	FUNC7(page);
}