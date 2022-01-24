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
typedef  scalar_t__ u64 ;
struct ufs_sb_private_info {unsigned int s_fpbshift; unsigned int s_fpbmask; } ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/ * b_page; } ;
typedef  unsigned int sector_t ;
struct TYPE_4__ {unsigned int i_lastfrag; int /*<<< orphan*/  truncate_mutex; int /*<<< orphan*/  meta_lock; } ;
struct TYPE_3__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 unsigned int UFS_NDIR_FRAGMENT ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int FUNC9 (struct inode*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,unsigned int,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct inode*,unsigned int*,int) ; 
 scalar_t__ FUNC12 (struct inode*,scalar_t__,unsigned int,unsigned int,int*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct inode*,unsigned int,unsigned int,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,char*,char*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct inode *inode, sector_t fragment, struct buffer_head *bh_result, int create)
{
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC2(sb)->s_uspi;
	int err = 0, new = 0;
	unsigned offsets[4];
	int depth = FUNC9(inode, fragment >> uspi->s_fpbshift, offsets);
	u64 phys64 = 0;
	unsigned frag = fragment & uspi->s_fpbmask;

	phys64 = FUNC11(inode, offsets, depth);
	if (!create)
		goto done;

	if (phys64) {
		if (fragment >= UFS_NDIR_FRAGMENT)
			goto done;
		FUNC6(&FUNC1(inode)->meta_lock);
		if (fragment < FUNC1(inode)->i_lastfrag) {
			FUNC7(&FUNC1(inode)->meta_lock);
			goto done;
		}
		FUNC7(&FUNC1(inode)->meta_lock);
	}
        /* This code entered only while writing ....? */

	FUNC4(&FUNC1(inode)->truncate_mutex);

	FUNC0("ENTER, ino %lu, fragment %llu\n", inode->i_ino, (unsigned long long)fragment);
	if (FUNC15(!depth)) {
		FUNC14(sb, "ufs_get_block", "block > big");
		err = -EIO;
		goto out;
	}

	if (FUNC1(inode)->i_lastfrag < UFS_NDIR_FRAGMENT) {
		unsigned lastfrag = FUNC1(inode)->i_lastfrag;
		unsigned tailfrags = lastfrag & uspi->s_fpbmask;
		if (tailfrags && fragment >= lastfrag) {
			if (!FUNC10(inode, fragment,
					     &err, bh_result->b_page))
				goto out;
		}
	}

	if (depth == 1) {
		phys64 = FUNC13(inode, offsets[0], fragment,
					   &err, &new, bh_result->b_page);
	} else {
		int i;
		phys64 = FUNC13(inode, offsets[0], fragment,
					   &err, NULL, NULL);
		for (i = 1; i < depth - 1; i++)
			phys64 = FUNC12(inode, phys64, offsets[i],
						fragment, &err, NULL, NULL);
		phys64 = FUNC12(inode, phys64, offsets[depth - 1],
					fragment, &err, &new, bh_result->b_page);
	}
out:
	if (phys64) {
		phys64 += frag;
		FUNC3(bh_result, sb, phys64);
		if (new)
			FUNC8(bh_result);
	}
	FUNC5(&FUNC1(inode)->truncate_mutex);
	return err;

done:
	if (phys64)
		FUNC3(bh_result, sb, phys64 + frag);
	return 0;
}