#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_flags; TYPE_1__* s_bdev; } ;
struct ext4_super_block {int /*<<< orphan*/  s_free_inodes_count; void* s_kbytes_written; } ;
struct buffer_head {int dummy; } ;
struct TYPE_5__ {int s_sectors_written_start; int /*<<< orphan*/  s_freeinodes_counter; int /*<<< orphan*/  s_freeclusters_counter; scalar_t__ s_kbytes_written; struct buffer_head* s_sbh; struct ext4_super_block* s_es; } ;
struct TYPE_4__ {scalar_t__ bd_part; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int REQ_FUA ; 
 int REQ_SYNC ; 
 int SB_RDONLY ; 
 size_t STAT_WRITE ; 
 int FUNC3 (struct buffer_head*,int) ; 
 scalar_t__ FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_wtime ; 
 int /*<<< orphan*/ * sectors ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 scalar_t__ FUNC21 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC23(struct super_block *sb, int sync)
{
	struct ext4_super_block *es = FUNC2(sb)->s_es;
	struct buffer_head *sbh = FUNC2(sb)->s_sbh;
	int error = 0;

	if (!sbh || FUNC4(sb))
		return error;

	/*
	 * The superblock bh should be mapped, but it might not be if the
	 * device was hot-removed. Not much we can do but fail the I/O.
	 */
	if (!FUNC5(sbh))
		return error;

	/*
	 * If the file system is mounted read-only, don't update the
	 * superblock write time.  This avoids updating the superblock
	 * write time when we are mounting the root file system
	 * read/only but we need to replay the journal; at that point,
	 * for people who are east of GMT and who make their clock
	 * tick in localtime for Windows bug-for-bug compatibility,
	 * the clock is set in the future, and this will cause e2fsck
	 * to complain and force a full file system check.
	 */
	if (!(sb->s_flags & SB_RDONLY))
		FUNC14(es, s_wtime);
	if (sb->s_bdev->bd_part)
		es->s_kbytes_written =
			FUNC10(FUNC2(sb)->s_kbytes_written +
			    ((FUNC17(sb->s_bdev->bd_part,
					     sectors[STAT_WRITE]) -
			      FUNC2(sb)->s_sectors_written_start) >> 1));
	else
		es->s_kbytes_written =
			FUNC10(FUNC2(sb)->s_kbytes_written);
	if (FUNC18(&FUNC2(sb)->s_freeclusters_counter))
		FUNC11(es,
			FUNC1(FUNC2(sb), FUNC19(
				&FUNC2(sb)->s_freeclusters_counter)));
	if (FUNC18(&FUNC2(sb)->s_freeinodes_counter))
		es->s_free_inodes_count =
			FUNC9(FUNC19(
				&FUNC2(sb)->s_freeinodes_counter));
	FUNC0(sbh, "marking dirty");
	FUNC13(sb);
	if (sync)
		FUNC15(sbh);
	if (FUNC7(sbh) || !FUNC6(sbh)) {
		/*
		 * Oh, dear.  A previous attempt to write the
		 * superblock failed.  This could happen because the
		 * USB device was yanked out.  Or it could happen to
		 * be a transient write error and maybe the block will
		 * be remapped.  Nothing we can do but to retry the
		 * write and hope for the best.
		 */
		FUNC12(sb, KERN_ERR, "previous I/O error to "
		       "superblock detected");
		FUNC8(sbh);
		FUNC20(sbh);
	}
	FUNC16(sbh);
	if (sync) {
		FUNC22(sbh);
		error = FUNC3(sbh,
			REQ_SYNC | (FUNC21(sb, BARRIER) ? REQ_FUA : 0));
		if (FUNC7(sbh)) {
			FUNC12(sb, KERN_ERR, "I/O error while writing "
			       "superblock");
			FUNC8(sbh);
			FUNC20(sbh);
		}
	}
	return error;
}