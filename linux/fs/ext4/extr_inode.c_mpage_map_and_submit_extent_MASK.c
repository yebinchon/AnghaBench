#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_7__ {TYPE_1__* io_end; } ;
struct ext4_map_blocks {scalar_t__ m_len; scalar_t__ m_lblk; } ;
struct mpage_da_data {scalar_t__ first_page; TYPE_2__ io_submit; struct ext4_map_blocks map; struct inode* inode; } ;
struct inode {scalar_t__ i_blkbits; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {scalar_t__ i_disksize; int /*<<< orphan*/  i_data_sem; } ;
struct TYPE_8__ {int s_mount_flags; } ;
struct TYPE_6__ {scalar_t__ offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int EXT4_MF_FS_ABORTED ; 
 TYPE_3__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int FUNC10 (struct mpage_da_data*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct mpage_da_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(handle_t *handle,
				       struct mpage_da_data *mpd,
				       bool *give_up_on_write)
{
	struct inode *inode = mpd->inode;
	struct ext4_map_blocks *map = &mpd->map;
	int err;
	loff_t disksize;
	int progress = 0;

	mpd->io_submit.io_end->offset =
				((loff_t)map->m_lblk) << inode->i_blkbits;
	do {
		err = FUNC11(handle, mpd);
		if (err < 0) {
			struct super_block *sb = inode->i_sb;

			if (FUNC5(FUNC1(sb)) ||
			    FUNC1(sb)->s_mount_flags & EXT4_MF_FS_ABORTED)
				goto invalidate_dirty_pages;
			/*
			 * Let the uper layers retry transient errors.
			 * In the case of ENOSPC, if ext4_count_free_blocks()
			 * is non-zero, a commit should free up blocks.
			 */
			if ((err == -ENOMEM) ||
			    (err == -ENOSPC && FUNC3(sb))) {
				if (progress)
					goto update_disksize;
				return err;
			}
			FUNC7(sb, KERN_CRIT,
				 "Delayed block allocation failed for "
				 "inode %lu at logical offset %llu with"
				 " max blocks %u with error %d",
				 inode->i_ino,
				 (unsigned long long)map->m_lblk,
				 (unsigned)map->m_len, -err);
			FUNC7(sb, KERN_CRIT,
				 "This should not happen!! Data will "
				 "be lost\n");
			if (err == -ENOSPC)
				FUNC8(inode);
		invalidate_dirty_pages:
			*give_up_on_write = true;
			return err;
		}
		progress = 1;
		/*
		 * Update buffer state, submit mapped pages, and get us new
		 * extent to map
		 */
		err = FUNC10(mpd);
		if (err < 0)
			goto update_disksize;
	} while (map->m_len);

update_disksize:
	/*
	 * Update on-disk size after IO is submitted.  Races with
	 * truncate are avoided by checking i_size under i_data_sem.
	 */
	disksize = ((loff_t)mpd->first_page) << PAGE_SHIFT;
	if (disksize > FUNC0(inode)->i_disksize) {
		int err2;
		loff_t i_size;

		FUNC2(&FUNC0(inode)->i_data_sem);
		i_size = FUNC9(inode);
		if (disksize > i_size)
			disksize = i_size;
		if (disksize > FUNC0(inode)->i_disksize)
			FUNC0(inode)->i_disksize = disksize;
		FUNC12(&FUNC0(inode)->i_data_sem);
		err2 = FUNC6(handle, inode);
		if (err2)
			FUNC4(inode->i_sb,
				   "Failed to mark inode %lu dirty",
				   inode->i_ino);
		if (!err)
			err = err2;
	}
	return err;
}