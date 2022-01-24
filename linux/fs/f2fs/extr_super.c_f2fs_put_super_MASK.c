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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct f2fs_sb_info {int /*<<< orphan*/  s_encoding; struct f2fs_sb_info** write_io; int /*<<< orphan*/  write_io_dummy; struct f2fs_sb_info* raw_super; scalar_t__ s_chksum_driver; struct f2fs_sb_info* ckpt; int /*<<< orphan*/ * meta_inode; int /*<<< orphan*/ * node_inode; int /*<<< orphan*/  fsync_node_num; int /*<<< orphan*/  umount_mutex; int /*<<< orphan*/  discard_blks; } ;
struct cp_control {int reason; } ;
struct TYPE_2__ {struct f2fs_sb_info** s_qf_names; } ;

/* Variables and functions */
 int CP_TRIMMED ; 
 int CP_UMOUNT ; 
 int /*<<< orphan*/  CP_UMOUNT_FLAG ; 
 TYPE_1__ FUNC0 (struct f2fs_sb_info*) ; 
 struct f2fs_sb_info* FUNC1 (struct super_block*) ; 
 int MAXQUOTAS ; 
 int NR_PAGE_TYPE ; 
 int /*<<< orphan*/  SBI_IS_DIRTY ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC10 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC11 (struct f2fs_sb_info*) ; 
 int FUNC12 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct f2fs_sb_info*,struct cp_control*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC27(struct super_block *sb)
{
	struct f2fs_sb_info *sbi = FUNC1(sb);
	int i;
	bool dropped;

	FUNC14(sb);

	/* prevent remaining shrinker jobs */
	FUNC24(&sbi->umount_mutex);

	/*
	 * We don't need to do checkpoint when superblock is clean.
	 * But, the previous checkpoint was not done by umount, it needs to do
	 * clean checkpoint again.
	 */
	if ((FUNC20(sbi, SBI_IS_DIRTY) ||
			!FUNC21(sbi, CP_UMOUNT_FLAG))) {
		struct cp_control cpc = {
			.reason = CP_UMOUNT,
		};
		FUNC18(sbi, &cpc);
	}

	/* be sure to wait for any on-going discard commands */
	dropped = FUNC12(sbi);

	if ((FUNC11(sbi) || FUNC10(sbi)) &&
					!sbi->discard_blks && !dropped) {
		struct cp_control cpc = {
			.reason = CP_UMOUNT | CP_TRIMMED,
		};
		FUNC18(sbi, &cpc);
	}

	/*
	 * normally superblock is clean, so we need to release this.
	 * In addition, EIO will skip do checkpoint, we need this as well.
	 */
	FUNC15(sbi, true);

	FUNC13(sbi);
	FUNC25(&sbi->umount_mutex);

	/* our cp_error case, we can wait for any writeback page */
	FUNC9(sbi);

	FUNC17(sbi);

	FUNC5(sbi, sbi->fsync_node_num);

	FUNC19(sbi->node_inode);
	sbi->node_inode = NULL;

	FUNC19(sbi->meta_inode);
	sbi->meta_inode = NULL;

	/*
	 * iput() can update stat information, if f2fs_write_checkpoint()
	 * above failed with error.
	 */
	FUNC8(sbi);

	/* destroy f2fs internal modules */
	FUNC6(sbi);
	FUNC7(sbi);

	FUNC22(sbi->ckpt);

	FUNC16(sbi);

	sb->s_fs_info = NULL;
	if (sbi->s_chksum_driver)
		FUNC2(sbi->s_chksum_driver);
	FUNC22(sbi->raw_super);

	FUNC3(sbi);
	FUNC23(sbi->write_io_dummy);
#ifdef CONFIG_QUOTA
	for (i = 0; i < MAXQUOTAS; i++)
		kvfree(F2FS_OPTION(sbi).s_qf_names[i]);
#endif
	FUNC4(sbi);
	for (i = 0; i < NR_PAGE_TYPE; i++)
		FUNC22(sbi->write_io[i]);
#ifdef CONFIG_UNICODE
	utf8_unload(sbi->s_encoding);
#endif
	FUNC22(sbi);
}