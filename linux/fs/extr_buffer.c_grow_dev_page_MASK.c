#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct buffer_head {int b_size; } ;
struct block_device {struct inode* bd_inode; } ;
typedef  int sector_t ;
typedef  scalar_t__ pgoff_t ;
typedef  int gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  __GFP_FS ; 
 int __GFP_NOFAIL ; 
 struct buffer_head* FUNC2 (struct page*,int,int) ; 
 struct page* FUNC3 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC4 (struct page*,struct block_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct buffer_head*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int
FUNC14(struct block_device *bdev, sector_t block,
	      pgoff_t index, int size, int sizebits, gfp_t gfp)
{
	struct inode *inode = bdev->bd_inode;
	struct page *page;
	struct buffer_head *bh;
	sector_t end_block;
	int ret = 0;		/* Will call free_more_memory() */
	gfp_t gfp_mask;

	gfp_mask = FUNC6(inode->i_mapping, ~__GFP_FS) | gfp;

	/*
	 * XXX: __getblk_slow() can not really deal with failure and
	 * will endlessly loop on improvised global reclaim.  Prefer
	 * looping in the allocator rather than here, at least that
	 * code knows what it's doing.
	 */
	gfp_mask |= __GFP_NOFAIL;

	page = FUNC3(inode->i_mapping, index, gfp_mask);

	FUNC0(!FUNC1(page));

	if (FUNC8(page)) {
		bh = FUNC7(page);
		if (bh->b_size == size) {
			end_block = FUNC4(page, bdev,
						(sector_t)index << sizebits,
						size);
			goto done;
		}
		if (!FUNC12(page))
			goto failed;
	}

	/*
	 * Allocate some buffers for this page
	 */
	bh = FUNC2(page, size, true);

	/*
	 * Link the page to the buffers and initialise them.  Take the
	 * lock to be atomic wrt __find_get_block(), which does not
	 * run under the page lock.
	 */
	FUNC10(&inode->i_mapping->private_lock);
	FUNC5(page, bh);
	end_block = FUNC4(page, bdev, (sector_t)index << sizebits,
			size);
	FUNC11(&inode->i_mapping->private_lock);
done:
	ret = (block < end_block) ? 1 : -ENXIO;
failed:
	FUNC13(page);
	FUNC9(page);
	return ret;
}