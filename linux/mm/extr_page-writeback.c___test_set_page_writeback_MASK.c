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
struct inode {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {struct inode* host; int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_WRITEBACK ; 
 int /*<<< orphan*/  NR_ZONE_WRITE_PENDING ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PAGECACHE_TAG_TOWRITE ; 
 int /*<<< orphan*/  PAGECACHE_TAG_WRITEBACK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  WB_WRITEBACK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 struct backing_dev_info* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int FUNC10 (struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 struct address_space* FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  xas ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC21(struct page *page, bool keep_write)
{
	struct address_space *mapping = FUNC13(page);
	int ret;

	FUNC9(page);
	if (mapping && FUNC11(mapping)) {
		FUNC2(xas, &mapping->i_pages, FUNC12(page));
		struct inode *inode = mapping->host;
		struct backing_dev_info *bdi = FUNC7(inode);
		unsigned long flags;

		FUNC18(&xas, flags);
		FUNC17(&xas);
		ret = FUNC1(page);
		if (!ret) {
			bool on_wblist;

			on_wblist = FUNC10(mapping,
						   PAGECACHE_TAG_WRITEBACK);

			FUNC19(&xas, PAGECACHE_TAG_WRITEBACK);
			if (FUNC3(bdi))
				FUNC5(FUNC8(inode), WB_WRITEBACK);

			/*
			 * We can come through here when swapping anonymous
			 * pages, so we don't necessarily have an inode to track
			 * for sync.
			 */
			if (mapping->host && !on_wblist)
				FUNC14(mapping->host);
		}
		if (!FUNC0(page))
			FUNC16(&xas, PAGECACHE_TAG_DIRTY);
		if (!keep_write)
			FUNC16(&xas, PAGECACHE_TAG_TOWRITE);
		FUNC20(&xas, flags);
	} else {
		ret = FUNC1(page);
	}
	if (!ret) {
		FUNC4(page, NR_WRITEBACK);
		FUNC6(page, NR_ZONE_WRITE_PENDING);
	}
	FUNC15(page);
	return ret;

}