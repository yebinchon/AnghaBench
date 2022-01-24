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
struct inode {TYPE_1__* i_sb; } ;
struct ext4_map_blocks {int m_len; int /*<<< orphan*/  m_flags; int /*<<< orphan*/  m_pblk; int /*<<< orphan*/  m_lblk; } ;
struct buffer_head {scalar_t__ b_size; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct ext4_map_blocks*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

int FUNC7(struct inode *inode, sector_t iblock,
			   struct buffer_head *bh, int create)
{
	struct ext4_map_blocks map;
	int ret = 0;

	FUNC0(create == 0);
	FUNC0(bh->b_size != inode->i_sb->s_blocksize);

	map.m_lblk = iblock;
	map.m_len = 1;

	/*
	 * first, we need to know whether the block is allocated already
	 * preallocated blocks are unmapped but should treated
	 * the same as allocated blocks.
	 */
	ret = FUNC2(inode, iblock, &map, bh);
	if (ret <= 0)
		return ret;

	FUNC4(bh, inode->i_sb, map.m_pblk);
	FUNC3(bh, map.m_flags);

	if (FUNC1(bh)) {
		/* A delayed write to unwritten bh should be marked
		 * new and mapped.  Mapped ensures that we don't do
		 * get_block multiple times when we write to the same
		 * offset and new ensures that we do proper zero out
		 * for partial write.
		 */
		FUNC6(bh);
		FUNC5(bh);
	}
	return 0;
}