#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int /*<<< orphan*/  for_reclaim; int /*<<< orphan*/  nr_to_write; int /*<<< orphan*/  sync_mode; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * wb_sync_req; } ;
typedef  int /*<<< orphan*/  nid_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  enum cp_reason_type { ____Placeholder_cp_reason_type } cp_reason_type ;
struct TYPE_8__ {int /*<<< orphan*/  i_sem; } ;
struct TYPE_7__ {scalar_t__ fsync_mode; } ;
struct TYPE_6__ {scalar_t__ min_fsync_blocks; } ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPEND_INO ; 
 int EIO ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 TYPE_3__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FI_APPEND_WRITE ; 
 int /*<<< orphan*/  FI_NEED_IPU ; 
 int /*<<< orphan*/  FI_UPDATE_WRITE ; 
 int /*<<< orphan*/  FLUSH_INO ; 
 scalar_t__ FSYNC_MODE_NOBARRIER ; 
 int /*<<< orphan*/  LONG_MAX ; 
 size_t NODE ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 TYPE_2__* FUNC3 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPDATE_INO ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct f2fs_sb_info*,struct inode*,struct writeback_control*,int,unsigned int*) ; 
 int FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 scalar_t__ FUNC14 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC23 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct inode*) ; 
 scalar_t__ FUNC25 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct inode*) ; 
 scalar_t__ FUNC28 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*) ; 
 scalar_t__ FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC35(struct file *file, loff_t start, loff_t end,
						int datasync, bool atomic)
{
	struct inode *inode = file->f_mapping->host;
	struct f2fs_sb_info *sbi = FUNC1(inode);
	nid_t ino = inode->i_ino;
	int ret = 0;
	enum cp_reason_type cp_reason = 0;
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_ALL,
		.nr_to_write = LONG_MAX,
		.for_reclaim = 0,
	};
	unsigned int seq_id = 0;

	if (FUNC33(FUNC15(inode->i_sb) ||
				FUNC26(sbi, SBI_CP_DISABLED)))
		return 0;

	FUNC30(inode);

	if (FUNC4(inode->i_mode))
		goto go_write;

	/* if fdatasync is triggered, let's do in-place-update */
	if (datasync || FUNC24(inode) <= FUNC3(sbi)->min_fsync_blocks)
		FUNC29(inode, FI_NEED_IPU);
	ret = FUNC23(file, start, end);
	FUNC7(inode, FI_NEED_IPU);

	if (ret) {
		FUNC31(inode, cp_reason, datasync, ret);
		return ret;
	}

	/* if the inode is dirty, let's recover all the time */
	if (!FUNC17(inode, datasync)) {
		FUNC22(inode, NULL);
		goto go_write;
	}

	/*
	 * if there is no written data, don't waste time to write recovery info.
	 */
	if (!FUNC25(inode, FI_APPEND_WRITE) &&
			!FUNC10(sbi, ino, APPEND_INO)) {

		/* it may call write_inode just prior to fsync */
		if (FUNC28(sbi, ino))
			goto go_write;

		if (FUNC25(inode, FI_UPDATE_WRITE) ||
				FUNC10(sbi, ino, UPDATE_INO))
			goto flush_out;
		goto out;
	}
go_write:
	/*
	 * Both of fdatasync() and fsync() are able to be recovered from
	 * sudden-power-off.
	 */
	FUNC8(&FUNC0(inode)->i_sem);
	cp_reason = FUNC27(inode);
	FUNC34(&FUNC0(inode)->i_sem);

	if (cp_reason) {
		/* all the dirty node pages should be flushed for POR */
		ret = FUNC18(inode->i_sb, 1);

		/*
		 * We've secured consistency through sync_fs. Following pino
		 * will be used only for fsynced inodes after checkpoint.
		 */
		FUNC32(inode);
		FUNC7(inode, FI_APPEND_WRITE);
		FUNC7(inode, FI_UPDATE_WRITE);
		goto out;
	}
sync_nodes:
	FUNC6(&sbi->wb_sync_req[NODE]);
	ret = FUNC11(sbi, inode, &wbc, atomic, &seq_id);
	FUNC5(&sbi->wb_sync_req[NODE]);
	if (ret)
		goto out;

	/* if cp_error was enabled, we should avoid infinite loop */
	if (FUNC33(FUNC9(sbi))) {
		ret = -EIO;
		goto out;
	}

	if (FUNC14(sbi, ino)) {
		FUNC13(inode, true);
		FUNC22(inode, NULL);
		goto sync_nodes;
	}

	/*
	 * If it's atomic_write, it's just fine to keep write ordering. So
	 * here we don't need to wait for node write completion, since we use
	 * node chain which serializes node blocks. If one of node writes are
	 * reordered, we can see simply broken chain, resulting in stopping
	 * roll-forward recovery. It means we'll recover all or none node blocks
	 * given fsync mark.
	 */
	if (!atomic) {
		ret = FUNC21(sbi, seq_id);
		if (ret)
			goto out;
	}

	/* once recovery info is written, don't need to tack this */
	FUNC16(sbi, ino, APPEND_INO);
	FUNC7(inode, FI_APPEND_WRITE);
flush_out:
	if (!atomic && FUNC2(sbi).fsync_mode != FSYNC_MODE_NOBARRIER)
		ret = FUNC12(sbi, inode->i_ino);
	if (!ret) {
		FUNC16(sbi, ino, UPDATE_INO);
		FUNC7(inode, FI_UPDATE_WRITE);
		FUNC16(sbi, ino, FLUSH_INO);
	}
	FUNC20(sbi, REQ_TIME);
out:
	FUNC31(inode, cp_reason, datasync, ret);
	FUNC19(NULL, 1);
	return ret;
}