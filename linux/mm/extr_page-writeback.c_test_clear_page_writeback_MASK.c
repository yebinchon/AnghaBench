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
struct mem_cgroup {int dummy; } ;
struct lruvec {int dummy; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_pages; struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_WRITEBACK ; 
 int /*<<< orphan*/  NR_WRITTEN ; 
 int /*<<< orphan*/  NR_ZONE_WRITE_PENDING ; 
 int /*<<< orphan*/  PAGECACHE_TAG_WRITEBACK ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  WB_WRITEBACK ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct bdi_writeback*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct lruvec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ) ; 
 struct backing_dev_info* FUNC9 (struct inode*) ; 
 struct bdi_writeback* FUNC10 (struct inode*) ; 
 struct mem_cgroup* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct address_space*) ; 
 struct lruvec* FUNC14 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 struct address_space* FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC21(struct page *page)
{
	struct address_space *mapping = FUNC16(page);
	struct mem_cgroup *memcg;
	struct lruvec *lruvec;
	int ret;

	memcg = FUNC11(page);
	lruvec = FUNC14(page, FUNC17(page));
	if (mapping && FUNC13(mapping)) {
		struct inode *inode = mapping->host;
		struct backing_dev_info *bdi = FUNC9(inode);
		unsigned long flags;

		FUNC19(&mapping->i_pages, flags);
		ret = FUNC0(page);
		if (ret) {
			FUNC3(&mapping->i_pages, FUNC15(page),
						PAGECACHE_TAG_WRITEBACK);
			if (FUNC4(bdi)) {
				struct bdi_writeback *wb = FUNC10(inode);

				FUNC6(wb, WB_WRITEBACK);
				FUNC2(wb);
			}
		}

		if (mapping->host && !FUNC12(mapping,
						     PAGECACHE_TAG_WRITEBACK))
			FUNC18(mapping->host);

		FUNC20(&mapping->i_pages, flags);
	} else {
		ret = FUNC0(page);
	}
	/*
	 * NOTE: Page might be free now! Writeback doesn't hold a page
	 * reference on its own, it relies on truncation to wait for
	 * the clearing of PG_writeback. The below can only access
	 * page state that is static across allocation cycles.
	 */
	if (ret) {
		FUNC5(lruvec, NR_WRITEBACK);
		FUNC7(page, NR_ZONE_WRITE_PENDING);
		FUNC8(page, NR_WRITTEN);
	}
	FUNC1(memcg);
	return ret;
}