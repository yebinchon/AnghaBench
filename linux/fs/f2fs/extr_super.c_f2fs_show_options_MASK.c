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
struct seq_file {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_3__ {char* inject_rate; char* inject_type; } ;
struct TYPE_4__ {char* inline_xattr_size; char* active_logs; char* write_io_size_bits; scalar_t__ whint_mode; scalar_t__ alloc_mode; char* unusable_cap; scalar_t__ fsync_mode; scalar_t__ test_dummy_encryption; TYPE_1__ fault_info; int /*<<< orphan*/  s_resgid; int /*<<< orphan*/  s_resuid; int /*<<< orphan*/  root_reserved_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTIVE ; 
 scalar_t__ ALLOC_MODE_DEFAULT ; 
 scalar_t__ ALLOC_MODE_REUSE ; 
 int /*<<< orphan*/  BG_GC ; 
 int /*<<< orphan*/  DATA_FLUSH ; 
 int /*<<< orphan*/  DISABLE_CHECKPOINT ; 
 int /*<<< orphan*/  DISABLE_EXT_IDENTIFY ; 
 int /*<<< orphan*/  DISABLE_ROLL_FORWARD ; 
 int /*<<< orphan*/  DISCARD ; 
 int /*<<< orphan*/  EXTENT_CACHE ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 TYPE_2__ FUNC1 (struct f2fs_sb_info*) ; 
 struct f2fs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FASTBOOT ; 
 int /*<<< orphan*/  FAULT_INJECTION ; 
 int /*<<< orphan*/  FLUSH_MERGE ; 
 int /*<<< orphan*/  FORCE_FG_GC ; 
 scalar_t__ FSYNC_MODE_NOBARRIER ; 
 scalar_t__ FSYNC_MODE_POSIX ; 
 scalar_t__ FSYNC_MODE_STRICT ; 
 int /*<<< orphan*/  GRPQUOTA ; 
 int /*<<< orphan*/  INLINE_DATA ; 
 int /*<<< orphan*/  INLINE_DENTRY ; 
 int /*<<< orphan*/  INLINE_XATTR ; 
 int /*<<< orphan*/  INLINE_XATTR_SIZE ; 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  NOBARRIER ; 
 int /*<<< orphan*/  NOHEAP ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int /*<<< orphan*/  PRJQUOTA ; 
 int /*<<< orphan*/  QUOTA ; 
 int /*<<< orphan*/  RESERVE_ROOT ; 
 int /*<<< orphan*/  USRQUOTA ; 
 scalar_t__ WHINT_MODE_FS ; 
 scalar_t__ WHINT_MODE_USER ; 
 int /*<<< orphan*/  XATTR_USER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*) ; 
 scalar_t__ FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct seq_file *seq, struct dentry *root)
{
	struct f2fs_sb_info *sbi = FUNC2(root->d_sb);

	if (!FUNC3(sbi->sb) && FUNC9(sbi, BG_GC)) {
		if (FUNC9(sbi, FORCE_FG_GC))
			FUNC7(seq, ",background_gc=%s", "sync");
		else
			FUNC7(seq, ",background_gc=%s", "on");
	} else {
		FUNC7(seq, ",background_gc=%s", "off");
	}
	if (FUNC9(sbi, DISABLE_ROLL_FORWARD))
		FUNC8(seq, ",disable_roll_forward");
	if (FUNC9(sbi, DISCARD))
		FUNC8(seq, ",discard");
	else
		FUNC8(seq, ",nodiscard");
	if (FUNC9(sbi, NOHEAP))
		FUNC8(seq, ",no_heap");
	else
		FUNC8(seq, ",heap");
#ifdef CONFIG_F2FS_FS_XATTR
	if (test_opt(sbi, XATTR_USER))
		seq_puts(seq, ",user_xattr");
	else
		seq_puts(seq, ",nouser_xattr");
	if (test_opt(sbi, INLINE_XATTR))
		seq_puts(seq, ",inline_xattr");
	else
		seq_puts(seq, ",noinline_xattr");
	if (test_opt(sbi, INLINE_XATTR_SIZE))
		seq_printf(seq, ",inline_xattr_size=%u",
					F2FS_OPTION(sbi).inline_xattr_size);
#endif
#ifdef CONFIG_F2FS_FS_POSIX_ACL
	if (test_opt(sbi, POSIX_ACL))
		seq_puts(seq, ",acl");
	else
		seq_puts(seq, ",noacl");
#endif
	if (FUNC9(sbi, DISABLE_EXT_IDENTIFY))
		FUNC8(seq, ",disable_ext_identify");
	if (FUNC9(sbi, INLINE_DATA))
		FUNC8(seq, ",inline_data");
	else
		FUNC8(seq, ",noinline_data");
	if (FUNC9(sbi, INLINE_DENTRY))
		FUNC8(seq, ",inline_dentry");
	else
		FUNC8(seq, ",noinline_dentry");
	if (!FUNC3(sbi->sb) && FUNC9(sbi, FLUSH_MERGE))
		FUNC8(seq, ",flush_merge");
	if (FUNC9(sbi, NOBARRIER))
		FUNC8(seq, ",nobarrier");
	if (FUNC9(sbi, FASTBOOT))
		FUNC8(seq, ",fastboot");
	if (FUNC9(sbi, EXTENT_CACHE))
		FUNC8(seq, ",extent_cache");
	else
		FUNC8(seq, ",noextent_cache");
	if (FUNC9(sbi, DATA_FLUSH))
		FUNC8(seq, ",data_flush");

	FUNC8(seq, ",mode=");
	if (FUNC9(sbi, ADAPTIVE))
		FUNC8(seq, "adaptive");
	else if (FUNC9(sbi, LFS))
		FUNC8(seq, "lfs");
	FUNC7(seq, ",active_logs=%u", FUNC1(sbi).active_logs);
	if (FUNC9(sbi, RESERVE_ROOT))
		FUNC7(seq, ",reserve_root=%u,resuid=%u,resgid=%u",
				FUNC1(sbi).root_reserved_blocks,
				FUNC6(&init_user_ns,
					FUNC1(sbi).s_resuid),
				FUNC5(&init_user_ns,
					FUNC1(sbi).s_resgid));
	if (FUNC0(sbi))
		FUNC7(seq, ",io_bits=%u",
				FUNC1(sbi).write_io_size_bits);
#ifdef CONFIG_F2FS_FAULT_INJECTION
	if (test_opt(sbi, FAULT_INJECTION)) {
		seq_printf(seq, ",fault_injection=%u",
				F2FS_OPTION(sbi).fault_info.inject_rate);
		seq_printf(seq, ",fault_type=%u",
				F2FS_OPTION(sbi).fault_info.inject_type);
	}
#endif
#ifdef CONFIG_QUOTA
	if (test_opt(sbi, QUOTA))
		seq_puts(seq, ",quota");
	if (test_opt(sbi, USRQUOTA))
		seq_puts(seq, ",usrquota");
	if (test_opt(sbi, GRPQUOTA))
		seq_puts(seq, ",grpquota");
	if (test_opt(sbi, PRJQUOTA))
		seq_puts(seq, ",prjquota");
#endif
	FUNC4(seq, sbi->sb);
	if (FUNC1(sbi).whint_mode == WHINT_MODE_USER)
		FUNC7(seq, ",whint_mode=%s", "user-based");
	else if (FUNC1(sbi).whint_mode == WHINT_MODE_FS)
		FUNC7(seq, ",whint_mode=%s", "fs-based");
#ifdef CONFIG_FS_ENCRYPTION
	if (F2FS_OPTION(sbi).test_dummy_encryption)
		seq_puts(seq, ",test_dummy_encryption");
#endif

	if (FUNC1(sbi).alloc_mode == ALLOC_MODE_DEFAULT)
		FUNC7(seq, ",alloc_mode=%s", "default");
	else if (FUNC1(sbi).alloc_mode == ALLOC_MODE_REUSE)
		FUNC7(seq, ",alloc_mode=%s", "reuse");

	if (FUNC9(sbi, DISABLE_CHECKPOINT))
		FUNC7(seq, ",checkpoint=disable:%u",
				FUNC1(sbi).unusable_cap);
	if (FUNC1(sbi).fsync_mode == FSYNC_MODE_POSIX)
		FUNC7(seq, ",fsync_mode=%s", "posix");
	else if (FUNC1(sbi).fsync_mode == FSYNC_MODE_STRICT)
		FUNC7(seq, ",fsync_mode=%s", "strict");
	else if (FUNC1(sbi).fsync_mode == FSYNC_MODE_NOBARRIER)
		FUNC7(seq, ",fsync_mode=%s", "nobarrier");
	return 0;
}