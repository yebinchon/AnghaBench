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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ext4_inode {int /*<<< orphan*/  i_dtime; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
struct TYPE_2__ {int s_inodes_per_block; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 scalar_t__ RECENTCY_DIRTY ; 
 int RECENTCY_MIN ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct ext4_group_desc* FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC9 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, ext4_group_t group, int ino)
{
	struct ext4_group_desc	*gdp;
	struct ext4_inode	*raw_inode;
	struct buffer_head	*bh;
	int inodes_per_block = FUNC1(sb)->s_inodes_per_block;
	int offset, ret = 0;
	int recentcy = RECENTCY_MIN;
	u32 dtime, now;

	gdp = FUNC5(sb, group, NULL);
	if (FUNC11(!gdp))
		return 0;

	bh = FUNC9(sb, FUNC6(sb, gdp) +
		       (ino / inodes_per_block));
	if (!bh || !FUNC4(bh))
		/*
		 * If the block is not in the buffer cache, then it
		 * must have been written out.
		 */
		goto out;

	offset = (ino % inodes_per_block) * FUNC0(sb);
	raw_inode = (struct ext4_inode *) (bh->b_data + offset);

	/* i_dtime is only 32 bits on disk, but we only care about relative
	 * times in the range of a few minutes (i.e. long enough to sync a
	 * recently-deleted inode to disk), so using the low 32 bits of the
	 * clock (a 68 year range) is enough, see time_before32() */
	dtime = FUNC8(raw_inode->i_dtime);
	now = FUNC7();
	if (FUNC3(bh))
		recentcy += RECENTCY_DIRTY;

	if (dtime && FUNC10(dtime, now) &&
	    FUNC10(now, dtime + recentcy))
		ret = 1;
out:
	FUNC2(bh);
	return ret;
}