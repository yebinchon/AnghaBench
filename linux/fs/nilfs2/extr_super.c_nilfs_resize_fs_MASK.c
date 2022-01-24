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
struct the_nilfs {scalar_t__ ns_blocksize_bits; scalar_t__ ns_nsegments; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_sbsize; int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/  ns_blocks_per_segment; } ;
struct super_block {TYPE_1__* s_bdev; struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {void* s_nsegments; void* s_dev_size; int /*<<< orphan*/  s_state; } ;
typedef  scalar_t__ loff_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int EIO ; 
 int ERANGE ; 
 int NILFS_RESIZE_FS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NILFS_SB_COMMIT_ALL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nilfs_super_block**) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_super_block*,struct nilfs_super_block*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,scalar_t__) ; 
 struct nilfs_super_block** FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nilfs_super_block*,struct the_nilfs*) ; 
 int FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct super_block *sb, __u64 newsize)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_super_block **sbp;
	__u64 devsize, newnsegs;
	loff_t sb2off;
	int ret;

	ret = -ERANGE;
	devsize = FUNC5(sb->s_bdev->bd_inode);
	if (newsize > devsize)
		goto out;

	/*
	 * Write lock is required to protect some functions depending
	 * on the number of segments, the number of reserved segments,
	 * and so forth.
	 */
	FUNC4(&nilfs->ns_segctor_sem);

	sb2off = FUNC0(newsize);
	newnsegs = sb2off >> nilfs->ns_blocksize_bits;
	FUNC3(newnsegs, nilfs->ns_blocks_per_segment);

	ret = FUNC14(nilfs->ns_sufile, newnsegs);
	FUNC16(&nilfs->ns_segctor_sem);
	if (ret < 0)
		goto out;

	ret = FUNC10(sb);
	if (ret < 0)
		goto out;

	FUNC4(&nilfs->ns_sem);
	FUNC11(sb, sb2off);
	ret = -EIO;
	sbp = FUNC12(sb, 0);
	if (FUNC7(sbp)) {
		FUNC13(sbp[0], nilfs);
		/*
		 * Drop NILFS_RESIZE_FS flag for compatibility with
		 * mount-time resize which may be implemented in a
		 * future release.
		 */
		sbp[0]->s_state = FUNC1(FUNC6(sbp[0]->s_state) &
					      ~NILFS_RESIZE_FS);
		sbp[0]->s_dev_size = FUNC2(newsize);
		sbp[0]->s_nsegments = FUNC2(nilfs->ns_nsegments);
		if (sbp[1])
			FUNC8(sbp[1], sbp[0], nilfs->ns_sbsize);
		ret = FUNC9(sb, NILFS_SB_COMMIT_ALL);
	}
	FUNC16(&nilfs->ns_sem);

	/*
	 * Reset the range of allocatable segments last.  This order
	 * is important in the case of expansion because the secondary
	 * superblock must be protected from log write until migration
	 * completes.
	 */
	if (!ret)
		FUNC15(nilfs->ns_sufile, 0, newnsegs - 1);
out:
	return ret;
}