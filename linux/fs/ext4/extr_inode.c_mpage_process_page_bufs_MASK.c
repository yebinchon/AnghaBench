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
struct TYPE_2__ {scalar_t__ m_len; } ;
struct mpage_da_data {TYPE_1__ map; int /*<<< orphan*/  do_map; struct inode* inode; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int /*<<< orphan*/  b_page; struct buffer_head* b_this_page; } ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpage_da_data*,scalar_t__,struct buffer_head*) ; 
 int FUNC6 (struct mpage_da_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mpage_da_data *mpd,
				   struct buffer_head *head,
				   struct buffer_head *bh,
				   ext4_lblk_t lblk)
{
	struct inode *inode = mpd->inode;
	int err;
	ext4_lblk_t blocks = (FUNC4(inode) + FUNC3(inode) - 1)
							>> inode->i_blkbits;

	if (FUNC2(inode))
		blocks = EXT_MAX_BLOCKS;

	do {
		FUNC0(FUNC1(bh));

		if (lblk >= blocks || !FUNC5(mpd, lblk, bh)) {
			/* Found extent to map? */
			if (mpd->map.m_len)
				return 0;
			/* Buffer needs mapping and handle is not started? */
			if (!mpd->do_map)
				return 0;
			/* Everything mapped so far and we hit EOF */
			break;
		}
	} while (lblk++, (bh = bh->b_this_page) != head);
	/* So far everything mapped? Submit the page for IO. */
	if (mpd->map.m_len == 0) {
		err = FUNC6(mpd, head->b_page);
		if (err < 0)
			return err;
	}
	return lblk < blocks;
}