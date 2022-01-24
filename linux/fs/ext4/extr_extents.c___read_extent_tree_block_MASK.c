#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_extent_header {int /*<<< orphan*/  eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_journal_inum; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct buffer_head* FUNC0 (int) ; 
 int EXT4_EX_FORCE_CACHE ; 
 int EXT4_EX_NOCACHE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int EXTENT_STATUS_HOLE ; 
 unsigned int EXTENT_STATUS_UNWRITTEN ; 
 unsigned int EXTENT_STATUS_WRITTEN ; 
 struct ext4_extent* FUNC2 (struct ext4_extent_header*) ; 
 int GFP_NOFS ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int __GFP_MOVABLE ; 
 int FUNC3 (char const*,unsigned int,struct inode*,struct ext4_extent_header*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,scalar_t__,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct ext4_extent*) ; 
 scalar_t__ FUNC9 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC10 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct ext4_extent_header* FUNC12 (struct buffer_head*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 struct buffer_head* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static struct buffer_head *
FUNC20(const char *function, unsigned int line,
			 struct inode *inode, ext4_fsblk_t pblk, int depth,
			 int flags)
{
	struct buffer_head		*bh;
	int				err;

	bh = FUNC16(inode->i_sb, pblk, __GFP_MOVABLE | GFP_NOFS);
	if (FUNC19(!bh))
		return FUNC0(-ENOMEM);

	if (!FUNC5(bh)) {
		FUNC18(inode, pblk, _RET_IP_);
		err = FUNC4(bh);
		if (err < 0)
			goto errout;
	}
	if (FUNC6(bh) && !(flags & EXT4_EX_FORCE_CACHE))
		return bh;
	if (!FUNC11(inode->i_sb) ||
	    (inode->i_ino !=
	     FUNC14(FUNC1(inode->i_sb)->s_es->s_journal_inum))) {
		err = FUNC3(function, line, inode,
				       FUNC12(bh), depth, pblk);
		if (err)
			goto errout;
	}
	FUNC17(bh);
	/*
	 * If this is a leaf block, cache all of its entries
	 */
	if (!(flags & EXT4_EX_NOCACHE) && depth == 0) {
		struct ext4_extent_header *eh = FUNC12(bh);
		struct ext4_extent *ex = FUNC2(eh);
		ext4_lblk_t prev = 0;
		int i;

		for (i = FUNC13(eh->eh_entries); i > 0; i--, ex++) {
			unsigned int status = EXTENT_STATUS_WRITTEN;
			ext4_lblk_t lblk = FUNC14(ex->ee_block);
			int len = FUNC8(ex);

			if (prev && (prev != lblk))
				FUNC7(inode, prev,
						     lblk - prev, ~0,
						     EXTENT_STATUS_HOLE);

			if (FUNC9(ex))
				status = EXTENT_STATUS_UNWRITTEN;
			FUNC7(inode, lblk, len,
					     FUNC10(ex), status);
			prev = lblk + len;
		}
	}
	return bh;
errout:
	FUNC15(bh);
	return FUNC0(err);

}