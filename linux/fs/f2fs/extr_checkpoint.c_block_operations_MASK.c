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
struct writeback_control {int /*<<< orphan*/  for_reclaim; int /*<<< orphan*/  nr_to_write; int /*<<< orphan*/  sync_mode; } ;
struct f2fs_sb_info {int /*<<< orphan*/  node_change; int /*<<< orphan*/ * wb_sync_req; int /*<<< orphan*/  node_write; TYPE_1__* sb; } ;
struct blk_plug {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_umount; } ;

/* Variables and functions */
 int DEFAULT_RETRY_QUOTA_FLUSH_COUNT ; 
 int /*<<< orphan*/  DIR_INODE ; 
 int /*<<< orphan*/  F2FS_DIRTY_DENTS ; 
 int /*<<< orphan*/  F2FS_DIRTY_IMETA ; 
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 int /*<<< orphan*/  FS_CP_NODE_IO ; 
 int /*<<< orphan*/  LONG_MAX ; 
 size_t NODE ; 
 int /*<<< orphan*/  SBI_QUOTA_NEED_FLUSH ; 
 int /*<<< orphan*/  SBI_QUOTA_SKIP_FLUSH ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct f2fs_sb_info*) ; 
 int FUNC13 (struct f2fs_sb_info*,struct writeback_control*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC15 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct f2fs_sb_info *sbi)
{
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_ALL,
		.nr_to_write = LONG_MAX,
		.for_reclaim = 0,
	};
	struct blk_plug plug;
	int err = 0, cnt = 0;

	FUNC5(&plug);

retry_flush_quotas:
	FUNC9(sbi);
	if (FUNC0(sbi)) {
		int locked;

		if (++cnt > DEFAULT_RETRY_QUOTA_FLUSH_COUNT) {
			FUNC16(sbi, SBI_QUOTA_SKIP_FLUSH);
			FUNC16(sbi, SBI_QUOTA_NEED_FLUSH);
			goto retry_flush_dents;
		}
		FUNC14(sbi);

		/* only failed during mount/umount/freeze/quotactl */
		locked = FUNC7(&sbi->sb->s_umount);
		FUNC10(sbi->sb, -1);
		if (locked)
			FUNC17(&sbi->sb->s_umount);
		FUNC6();
		goto retry_flush_quotas;
	}

retry_flush_dents:
	/* write all the dirty dentry pages */
	if (FUNC15(sbi, F2FS_DIRTY_DENTS)) {
		FUNC14(sbi);
		err = FUNC11(sbi, DIR_INODE);
		if (err)
			goto out;
		FUNC6();
		goto retry_flush_quotas;
	}

	/*
	 * POR: we should ensure that there are no dirty node pages
	 * until finishing nat/sit flush. inode->i_blocks can be updated.
	 */
	FUNC8(&sbi->node_change);

	if (FUNC15(sbi, F2FS_DIRTY_IMETA)) {
		FUNC18(&sbi->node_change);
		FUNC14(sbi);
		err = FUNC12(sbi);
		if (err)
			goto out;
		FUNC6();
		goto retry_flush_quotas;
	}

retry_flush_nodes:
	FUNC8(&sbi->node_write);

	if (FUNC15(sbi, F2FS_DIRTY_NODES)) {
		FUNC18(&sbi->node_write);
		FUNC3(&sbi->wb_sync_req[NODE]);
		err = FUNC13(sbi, &wbc, false, FS_CP_NODE_IO);
		FUNC2(&sbi->wb_sync_req[NODE]);
		if (err) {
			FUNC18(&sbi->node_change);
			FUNC14(sbi);
			goto out;
		}
		FUNC6();
		goto retry_flush_nodes;
	}

	/*
	 * sbi->node_change is used only for AIO write_begin path which produces
	 * dirty node blocks and some checkpoint values by block allocation.
	 */
	FUNC1(sbi);
	FUNC18(&sbi->node_change);
out:
	FUNC4(&plug);
	return err;
}