#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct hfsplus_vh {void* file_count; void* folder_count; void* next_cnid; void* free_blocks; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  vh_mutex; int /*<<< orphan*/  alloc_mutex; int /*<<< orphan*/  s_backup_vhdr_buf; scalar_t__ sect_count; scalar_t__ part_start; int /*<<< orphan*/  s_vhdr_buf; struct hfsplus_vh* s_vhdr; int /*<<< orphan*/  s_backup_vhdr; int /*<<< orphan*/  file_count; int /*<<< orphan*/  folder_count; int /*<<< orphan*/  next_cnid; int /*<<< orphan*/  free_blocks; TYPE_7__* alloc_file; TYPE_6__* attr_tree; TYPE_4__* ext_tree; TYPE_2__* cat_tree; } ;
struct TYPE_14__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_13__ {TYPE_5__* inode; } ;
struct TYPE_12__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_11__ {TYPE_3__* inode; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_9__ {TYPE_1__* inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hfsplus_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  HFSPLUS_SB_NOBARRIER ; 
 int /*<<< orphan*/  HFSPLUS_SB_WRITEBACKUP ; 
 scalar_t__ HFSPLUS_VOLHEAD_SECTOR ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  REQ_SYNC ; 
 int /*<<< orphan*/  SUPER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct super_block*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct hfsplus_vh*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb, int wait)
{
	struct hfsplus_sb_info *sbi = FUNC0(sb);
	struct hfsplus_vh *vhdr = sbi->s_vhdr;
	int write_backup = 0;
	int error, error2;

	if (!wait)
		return 0;

	FUNC4(SUPER, "hfsplus_sync_fs\n");

	/*
	 * Explicitly write out the special metadata inodes.
	 *
	 * While these special inodes are marked as hashed and written
	 * out peridocically by the flusher threads we redirty them
	 * during writeout of normal inodes, and thus the life lock
	 * prevents us from getting the latest state to disk.
	 */
	error = FUNC3(sbi->cat_tree->inode->i_mapping);
	error2 = FUNC3(sbi->ext_tree->inode->i_mapping);
	if (!error)
		error = error2;
	if (sbi->attr_tree) {
		error2 =
		    FUNC3(sbi->attr_tree->inode->i_mapping);
		if (!error)
			error = error2;
	}
	error2 = FUNC3(sbi->alloc_file->i_mapping);
	if (!error)
		error = error2;

	FUNC7(&sbi->vh_mutex);
	FUNC7(&sbi->alloc_mutex);
	vhdr->free_blocks = FUNC2(sbi->free_blocks);
	vhdr->next_cnid = FUNC2(sbi->next_cnid);
	vhdr->folder_count = FUNC2(sbi->folder_count);
	vhdr->file_count = FUNC2(sbi->file_count);

	if (FUNC9(HFSPLUS_SB_WRITEBACKUP, &sbi->flags)) {
		FUNC6(sbi->s_backup_vhdr, sbi->s_vhdr, sizeof(*sbi->s_vhdr));
		write_backup = 1;
	}

	error2 = FUNC5(sb,
				   sbi->part_start + HFSPLUS_VOLHEAD_SECTOR,
				   sbi->s_vhdr_buf, NULL, REQ_OP_WRITE,
				   REQ_SYNC);
	if (!error)
		error = error2;
	if (!write_backup)
		goto out;

	error2 = FUNC5(sb,
				  sbi->part_start + sbi->sect_count - 2,
				  sbi->s_backup_vhdr_buf, NULL, REQ_OP_WRITE,
				  REQ_SYNC);
	if (!error)
		error2 = error;
out:
	FUNC8(&sbi->alloc_mutex);
	FUNC8(&sbi->vh_mutex);

	if (!FUNC10(HFSPLUS_SB_NOBARRIER, &sbi->flags))
		FUNC1(sb->s_bdev, GFP_KERNEL, NULL);

	return error;
}