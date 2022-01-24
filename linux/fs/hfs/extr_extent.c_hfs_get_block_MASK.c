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
typedef  int u32 ;
typedef  int u16 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {scalar_t__ fs_blocks; int alloc_blocks; int first_blocks; int cached_start; int /*<<< orphan*/  phys_size; int /*<<< orphan*/  extents_lock; int /*<<< orphan*/  cached_extents; int /*<<< orphan*/  first_extents; } ;
struct TYPE_3__ {int fs_div; scalar_t__ fs_start; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct inode*,int) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

int FUNC11(struct inode *inode, sector_t block,
		  struct buffer_head *bh_result, int create)
{
	struct super_block *sb;
	u16 dblock, ablock;
	int res;

	sb = inode->i_sb;
	/* Convert inode block to disk allocation block */
	ablock = (u32)block / FUNC1(sb)->fs_div;

	if (block >= FUNC0(inode)->fs_blocks) {
		if (!create)
			return 0;
		if (block > FUNC0(inode)->fs_blocks)
			return -EIO;
		if (ablock >= FUNC0(inode)->alloc_blocks) {
			res = FUNC4(inode);
			if (res)
				return res;
		}
	} else
		create = 0;

	if (ablock < FUNC0(inode)->first_blocks) {
		dblock = FUNC2(FUNC0(inode)->first_extents, ablock);
		goto done;
	}

	FUNC8(&FUNC0(inode)->extents_lock);
	res = FUNC3(inode, ablock);
	if (!res)
		dblock = FUNC2(FUNC0(inode)->cached_extents,
					    ablock - FUNC0(inode)->cached_start);
	else {
		FUNC9(&FUNC0(inode)->extents_lock);
		return -EIO;
	}
	FUNC9(&FUNC0(inode)->extents_lock);

done:
	FUNC6(bh_result, sb, FUNC1(sb)->fs_start +
	       dblock * FUNC1(sb)->fs_div +
	       (u32)block % FUNC1(sb)->fs_div);

	if (create) {
		FUNC10(bh_result);
		FUNC0(inode)->phys_size += sb->s_blocksize;
		FUNC0(inode)->fs_blocks++;
		FUNC5(inode, sb->s_blocksize);
		FUNC7(inode);
	}
	return 0;
}