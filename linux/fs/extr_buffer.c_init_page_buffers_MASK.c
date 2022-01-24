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
struct buffer_head {struct buffer_head* b_this_page; scalar_t__ b_blocknr; struct block_device* b_bdev; int /*<<< orphan*/ * b_private; int /*<<< orphan*/ * b_end_io; } ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static sector_t
FUNC7(struct page *page, struct block_device *bdev,
			sector_t block, int size)
{
	struct buffer_head *head = FUNC4(page);
	struct buffer_head *bh = head;
	int uptodate = FUNC1(page);
	sector_t end_block = FUNC2(FUNC0(bdev->bd_inode), size);

	do {
		if (!FUNC3(bh)) {
			bh->b_end_io = NULL;
			bh->b_private = NULL;
			bh->b_bdev = bdev;
			bh->b_blocknr = block;
			if (uptodate)
				FUNC6(bh);
			if (block < end_block)
				FUNC5(bh);
		}
		block++;
		bh = bh->b_this_page;
	} while (bh != head);

	/*
	 * Caller needs to validate requested block against end of device.
	 */
	return end_block;
}