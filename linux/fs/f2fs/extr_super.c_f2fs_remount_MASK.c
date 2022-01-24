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
struct super_block {unsigned long s_flags; } ;
struct f2fs_mount_info {scalar_t__ whint_mode; int /*<<< orphan*/ ** s_qf_names; int /*<<< orphan*/  s_jquota_fmt; } ;
struct f2fs_sb_info {struct f2fs_mount_info mount_opt; scalar_t__ gc_thread; } ;
struct TYPE_2__ {scalar_t__ whint_mode; int /*<<< orphan*/ ** s_qf_names; int /*<<< orphan*/  s_jquota_fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BG_GC ; 
 int /*<<< orphan*/  DISABLE_CHECKPOINT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXTENT_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*) ; 
 TYPE_1__ FUNC1 (struct f2fs_sb_info*) ; 
 struct f2fs_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FLUSH_MERGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAXQUOTAS ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int /*<<< orphan*/  SBI_IS_CLOSE ; 
 int /*<<< orphan*/  SBI_IS_DIRTY ; 
 int /*<<< orphan*/  SBI_NEED_SB_WRITE ; 
 int SB_LAZYTIME ; 
 int SB_POSIXACL ; 
 int SB_RDONLY ; 
 int /*<<< orphan*/  WB_REASON_SYNC ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int) ; 
 int FUNC7 (struct super_block*,int) ; 
 int FUNC8 (struct f2fs_sb_info*,int) ; 
 int FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int) ; 
 int FUNC11 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 int FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,char*,int) ; 
 scalar_t__ FUNC15 (struct super_block*) ; 
 scalar_t__ FUNC16 (struct f2fs_sb_info*) ; 
 int FUNC17 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct f2fs_sb_info*,char*) ; 
 scalar_t__ FUNC21 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct f2fs_sb_info*) ; 
 int FUNC25 (struct super_block*,char*) ; 
 scalar_t__ FUNC26 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC27 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct super_block*) ; 
 int FUNC29 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC31(struct super_block *sb, int *flags, char *data)
{
	struct f2fs_sb_info *sbi = FUNC2(sb);
	struct f2fs_mount_info org_mount_opt;
	unsigned long old_sb_flags;
	int err;
	bool need_restart_gc = false;
	bool need_stop_gc = false;
	bool no_extent_cache = !FUNC29(sbi, EXTENT_CACHE);
	bool disable_checkpoint = FUNC29(sbi, DISABLE_CHECKPOINT);
	bool no_io_align = !FUNC0(sbi);
	bool checkpoint_changed;
#ifdef CONFIG_QUOTA
	int i, j;
#endif

	/*
	 * Save the old mount options in case we
	 * need to restore them.
	 */
	org_mount_opt = sbi->mount_opt;
	old_sb_flags = sb->s_flags;

#ifdef CONFIG_QUOTA
	org_mount_opt.s_jquota_fmt = F2FS_OPTION(sbi).s_jquota_fmt;
	for (i = 0; i < MAXQUOTAS; i++) {
		if (F2FS_OPTION(sbi).s_qf_names[i]) {
			org_mount_opt.s_qf_names[i] =
				kstrdup(F2FS_OPTION(sbi).s_qf_names[i],
				GFP_KERNEL);
			if (!org_mount_opt.s_qf_names[i]) {
				for (j = 0; j < i; j++)
					kvfree(org_mount_opt.s_qf_names[j]);
				return -ENOMEM;
			}
		} else {
			org_mount_opt.s_qf_names[i] = NULL;
		}
	}
#endif

	/* recover superblocks we couldn't write due to previous RO mount */
	if (!(*flags & SB_RDONLY) && FUNC21(sbi, SBI_NEED_SB_WRITE)) {
		err = FUNC8(sbi, false);
		FUNC14(sbi, "Try to recover all the superblocks, ret: %d",
			  err);
		if (!err)
			FUNC4(sbi, SBI_NEED_SB_WRITE);
	}

	FUNC5(sbi);

	/* parse mount options */
	err = FUNC25(sb, data);
	if (err)
		goto restore_opts;
	checkpoint_changed =
			disable_checkpoint != FUNC29(sbi, DISABLE_CHECKPOINT);

	/*
	 * Previous and new state of filesystem is RO,
	 * so skip checking GC and FLUSH_MERGE conditions.
	 */
	if (FUNC15(sb) && (*flags & SB_RDONLY))
		goto skip;

#ifdef CONFIG_QUOTA
	if (!f2fs_readonly(sb) && (*flags & SB_RDONLY)) {
		err = dquot_suspend(sb, -1);
		if (err < 0)
			goto restore_opts;
	} else if (f2fs_readonly(sb) && !(*flags & SB_RDONLY)) {
		/* dquot_resume needs RW */
		sb->s_flags &= ~SB_RDONLY;
		if (sb_any_quota_suspended(sb)) {
			dquot_resume(sb, -1);
		} else if (f2fs_sb_has_quota_ino(sbi)) {
			err = f2fs_enable_quotas(sb);
			if (err)
				goto restore_opts;
		}
	}
#endif
	/* disallow enable/disable extent_cache dynamically */
	if (no_extent_cache == !!FUNC29(sbi, EXTENT_CACHE)) {
		err = -EINVAL;
		FUNC20(sbi, "switch extent_cache option is not allowed");
		goto restore_opts;
	}

	if (no_io_align == !!FUNC0(sbi)) {
		err = -EINVAL;
		FUNC20(sbi, "switch io_bits option is not allowed");
		goto restore_opts;
	}

	if ((*flags & SB_RDONLY) && FUNC29(sbi, DISABLE_CHECKPOINT)) {
		err = -EINVAL;
		FUNC20(sbi, "disabling checkpoint not compatible with read-only");
		goto restore_opts;
	}

	/*
	 * We stop the GC thread if FS is mounted as RO
	 * or if background_gc = off is passed in mount
	 * option. Also sync the filesystem.
	 */
	if ((*flags & SB_RDONLY) || !FUNC29(sbi, BG_GC)) {
		if (sbi->gc_thread) {
			FUNC18(sbi);
			need_restart_gc = true;
		}
	} else if (!sbi->gc_thread) {
		err = FUNC17(sbi);
		if (err)
			goto restore_opts;
		need_stop_gc = true;
	}

	if (*flags & SB_RDONLY ||
		FUNC1(sbi).whint_mode != org_mount_opt.whint_mode) {
		FUNC30(sb, WB_REASON_SYNC);
		FUNC28(sb);

		FUNC27(sbi, SBI_IS_DIRTY);
		FUNC27(sbi, SBI_IS_CLOSE);
		FUNC19(sb, 1);
		FUNC4(sbi, SBI_IS_CLOSE);
	}

	if (checkpoint_changed) {
		if (FUNC29(sbi, DISABLE_CHECKPOINT)) {
			err = FUNC11(sbi);
			if (err)
				goto restore_gc;
		} else {
			FUNC12(sbi);
		}
	}

	/*
	 * We stop issue flush thread if FS is mounted as RO
	 * or if flush_merge is not passed in mount option.
	 */
	if ((*flags & SB_RDONLY) || !FUNC29(sbi, FLUSH_MERGE)) {
		FUNC3(sbi, FLUSH_MERGE);
		FUNC10(sbi, false);
	} else {
		err = FUNC9(sbi);
		if (err)
			goto restore_gc;
	}
skip:
#ifdef CONFIG_QUOTA
	/* Release old quota file names */
	for (i = 0; i < MAXQUOTAS; i++)
		kvfree(org_mount_opt.s_qf_names[i]);
#endif
	/* Update the POSIXACL Flag */
	sb->s_flags = (sb->s_flags & ~SB_POSIXACL) |
		(FUNC29(sbi, POSIX_ACL) ? SB_POSIXACL : 0);

	FUNC24(sbi);
	*flags = (*flags & ~SB_LAZYTIME) | (sb->s_flags & SB_LAZYTIME);
	return 0;
restore_gc:
	if (need_restart_gc) {
		if (FUNC17(sbi))
			FUNC20(sbi, "background gc thread has stopped");
	} else if (need_stop_gc) {
		FUNC18(sbi);
	}
restore_opts:
#ifdef CONFIG_QUOTA
	F2FS_OPTION(sbi).s_jquota_fmt = org_mount_opt.s_jquota_fmt;
	for (i = 0; i < MAXQUOTAS; i++) {
		kvfree(F2FS_OPTION(sbi).s_qf_names[i]);
		F2FS_OPTION(sbi).s_qf_names[i] = org_mount_opt.s_qf_names[i];
	}
#endif
	sbi->mount_opt = org_mount_opt;
	sb->s_flags = old_sb_flags;
	return err;
}