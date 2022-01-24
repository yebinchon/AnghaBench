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
struct writeback_control {scalar_t__ sync_mode; scalar_t__ nr_to_write; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct inode {int i_blkbits; } ;
struct gfs2_sbd {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int AOP_WRITEPAGE_ACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ WB_SYNC_NONE ; 
 int FUNC4 (struct page*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct gfs2_sbd*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct writeback_control*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int FUNC14(struct address_space *mapping,
				    struct writeback_control *wbc,
				    struct pagevec *pvec,
				    int nr_pages,
				    pgoff_t *done_index)
{
	struct inode *inode = mapping->host;
	struct gfs2_sbd *sdp = FUNC1(inode);
	unsigned nrblocks = nr_pages * (PAGE_SIZE >> inode->i_blkbits);
	int i;
	int ret;

	ret = FUNC6(sdp, nrblocks, nrblocks);
	if (ret < 0)
		return ret;

	for(i = 0; i < nr_pages; i++) {
		struct page *page = pvec->pages[i];

		*done_index = page->index;

		FUNC9(page);

		if (FUNC11(page->mapping != mapping)) {
continue_unlock:
			FUNC12(page);
			continue;
		}

		if (!FUNC2(page)) {
			/* someone wrote it for us */
			goto continue_unlock;
		}

		if (FUNC3(page)) {
			if (wbc->sync_mode != WB_SYNC_NONE)
				FUNC13(page);
			else
				goto continue_unlock;
		}

		FUNC0(FUNC3(page));
		if (!FUNC5(page))
			goto continue_unlock;

		FUNC10(wbc, FUNC8(inode));

		ret = FUNC4(page, wbc);
		if (FUNC11(ret)) {
			if (ret == AOP_WRITEPAGE_ACTIVATE) {
				FUNC12(page);
				ret = 0;
			} else {

				/*
				 * done_index is set past this page,
				 * so media errors will not choke
				 * background writeout for the entire
				 * file. This has consequences for
				 * range_cyclic semantics (ie. it may
				 * not be suitable for data integrity
				 * writeout).
				 */
				*done_index = page->index + 1;
				ret = 1;
				break;
			}
		}

		/*
		 * We stop writing back only if we are not doing
		 * integrity sync. In case of integrity sync we have to
		 * keep going until we have written all the pages
		 * we tagged for writeback prior to entering this loop.
		 */
		if (--wbc->nr_to_write <= 0 && wbc->sync_mode == WB_SYNC_NONE) {
			ret = 1;
			break;
		}

	}
	FUNC7(sdp);
	return ret;
}