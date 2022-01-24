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
struct list_head {int dummy; } ;
struct fsync_inode_entry {int dummy; } ;
struct f2fs_sb_info {TYPE_1__* sb; int /*<<< orphan*/  cp_mutex; } ;
struct cp_control {int /*<<< orphan*/  reason; } ;
typedef  int loff_t ;
struct TYPE_2__ {unsigned long s_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_RECOVERY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  SBI_IS_RECOVERED ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 unsigned long SB_ACTIVE ; 
 unsigned long SB_RDONLY ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 
 int FUNC7 (struct f2fs_sb_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct f2fs_sb_info*,struct cp_control*) ; 
 int FUNC12 (struct f2fs_sb_info*,struct list_head*,int) ; 
 int /*<<< orphan*/  fsync_entry_slab ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct f2fs_sb_info*,struct list_head*,struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int) ; 

int FUNC21(struct f2fs_sb_info *sbi, bool check_only)
{
	struct list_head inode_list, tmp_inode_list;
	struct list_head dir_list;
	int err;
	int ret = 0;
	unsigned long s_flags = sbi->sb->s_flags;
	bool need_writecp = false;
#ifdef CONFIG_QUOTA
	int quota_enabled;
#endif

	if (s_flags & SB_RDONLY) {
		FUNC8(sbi, "recover fsync data on readonly fs");
		sbi->sb->s_flags &= ~SB_RDONLY;
	}

#ifdef CONFIG_QUOTA
	/* Needed for iput() to work correctly and not trash data */
	sbi->sb->s_flags |= SB_ACTIVE;
	/* Turn on quotas so that they are updated correctly */
	quota_enabled = f2fs_enable_quota_files(sbi, s_flags & SB_RDONLY);
#endif

	fsync_entry_slab = FUNC9("f2fs_fsync_inode_entry",
			sizeof(struct fsync_inode_entry));
	if (!fsync_entry_slab) {
		err = -ENOMEM;
		goto out;
	}

	FUNC0(&inode_list);
	FUNC0(&tmp_inode_list);
	FUNC0(&dir_list);

	/* prevent checkpoint */
	FUNC15(&sbi->cp_mutex);

	/* step #1: find fsynced inode numbers */
	err = FUNC12(sbi, &inode_list, check_only);
	if (err || FUNC14(&inode_list))
		goto skip;

	if (check_only) {
		ret = 1;
		goto skip;
	}

	need_writecp = true;

	/* step #2: recover data */
	err = FUNC17(sbi, &inode_list, &tmp_inode_list, &dir_list);
	if (!err)
		FUNC6(sbi, !FUNC14(&inode_list));
	else {
		/* restore s_flags to let iput() trash data */
		sbi->sb->s_flags = s_flags;
	}
skip:
	FUNC5(&inode_list, err);
	FUNC5(&tmp_inode_list, err);

	/* truncate meta pages to be used by the recovery */
	FUNC20(FUNC2(sbi),
			(loff_t)FUNC1(sbi) << PAGE_SHIFT, -1);

	if (err) {
		FUNC19(FUNC3(sbi));
		FUNC19(FUNC2(sbi));
	} else {
		FUNC4(sbi, SBI_POR_DOING);
	}
	FUNC16(&sbi->cp_mutex);

	/* let's drop all the directory inodes for clean checkpoint */
	FUNC5(&dir_list, err);

	if (need_writecp) {
		FUNC18(sbi, SBI_IS_RECOVERED);

		if (!err) {
			struct cp_control cpc = {
				.reason = CP_RECOVERY,
			};
			err = FUNC11(sbi, &cpc);
		}
	}

	FUNC13(fsync_entry_slab);
out:
#ifdef CONFIG_QUOTA
	/* Turn quotas off */
	if (quota_enabled)
		f2fs_quota_off_umount(sbi->sb);
#endif
	sbi->sb->s_flags = s_flags; /* Restore SB_RDONLY status */

	return ret ? ret: err;
}