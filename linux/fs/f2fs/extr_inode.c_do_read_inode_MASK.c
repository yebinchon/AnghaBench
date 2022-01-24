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
struct page {int dummy; } ;
struct TYPE_2__ {void* tv_nsec; void* tv_sec; } ;
struct inode {TYPE_1__ i_mtime; TYPE_1__ i_ctime; TYPE_1__ i_atime; void* i_size; int /*<<< orphan*/  i_ino; void* i_mode; void* i_generation; int /*<<< orphan*/  i_blocks; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode_info {int i_flags; TYPE_1__ i_crtime; TYPE_1__* i_disk_time; void* i_extra_isize; int /*<<< orphan*/  i_projid; void* last_disk_size; void* i_inline_xattr_size; int /*<<< orphan*/  i_dir_level; void* i_pino; int /*<<< orphan*/  i_advise; scalar_t__ flags; void* i_xattr_nid; void** i_gc_failures; void* i_current_depth; } ;
struct f2fs_inode {int /*<<< orphan*/  i_crtime_nsec; int /*<<< orphan*/  i_crtime; int /*<<< orphan*/  i_projid; int /*<<< orphan*/  i_inline_xattr_size; int /*<<< orphan*/  i_extra_isize; int /*<<< orphan*/  i_ext; int /*<<< orphan*/  i_dir_level; int /*<<< orphan*/  i_pino; int /*<<< orphan*/  i_advise; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_xattr_nid; int /*<<< orphan*/  i_gc_failures; int /*<<< orphan*/  i_current_depth; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_mtime_nsec; int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_atime_nsec; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_links; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
typedef  scalar_t__ projid_t ;

/* Variables and functions */
 void* DEFAULT_INLINE_XATTR_ADDRS ; 
 int EFSCORRUPTED ; 
 int EINVAL ; 
 scalar_t__ F2FS_DEF_PROJID ; 
 scalar_t__ FUNC0 (struct f2fs_inode*,void*,scalar_t__) ; 
 struct f2fs_inode_info* FUNC1 (struct inode*) ; 
 struct f2fs_inode* FUNC2 (struct page*) ; 
 struct f2fs_sb_info* FUNC3 (struct inode*) ; 
 int F2FS_PROJINHERIT_FL ; 
 int /*<<< orphan*/  FI_FIRST_BLOCK_WRITTEN ; 
 int /*<<< orphan*/  FI_PROJ_INHERIT ; 
 size_t GC_FAILURE_PIN ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct f2fs_inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct page*) ; 
 int FUNC11 (struct f2fs_sb_info*,struct f2fs_inode*) ; 
 scalar_t__ FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 struct page* FUNC14 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 scalar_t__ FUNC18 (struct inode*) ; 
 scalar_t__ FUNC19 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct page*,int) ; 
 scalar_t__ FUNC22 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC23 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC24 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,struct f2fs_inode*) ; 
 scalar_t__ i_crtime ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,void*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 void* FUNC29 (int /*<<< orphan*/ ) ; 
 void* FUNC30 (int /*<<< orphan*/ ) ; 
 void* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC34 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC37 (struct page*) ; 
 int /*<<< orphan*/  FUNC38 (struct inode*) ; 
 int /*<<< orphan*/  FUNC39 (struct inode*) ; 
 int /*<<< orphan*/  FUNC40 (struct inode*) ; 

__attribute__((used)) static int FUNC41(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC3(inode);
	struct f2fs_inode_info *fi = FUNC1(inode);
	struct page *node_page;
	struct f2fs_inode *ri;
	projid_t i_projid;
	int err;

	/* Check if ino is within scope */
	if (FUNC12(sbi, inode->i_ino))
		return -EINVAL;

	node_page = FUNC14(sbi, inode->i_ino);
	if (FUNC4(node_page))
		return FUNC5(node_page);

	ri = FUNC2(node_page);

	inode->i_mode = FUNC29(ri->i_mode);
	FUNC27(inode, FUNC30(ri->i_uid));
	FUNC26(inode, FUNC30(ri->i_gid));
	FUNC36(inode, FUNC30(ri->i_links));
	inode->i_size = FUNC31(ri->i_size);
	inode->i_blocks = FUNC6(FUNC31(ri->i_blocks) - 1);

	inode->i_atime.tv_sec = FUNC31(ri->i_atime);
	inode->i_ctime.tv_sec = FUNC31(ri->i_ctime);
	inode->i_mtime.tv_sec = FUNC31(ri->i_mtime);
	inode->i_atime.tv_nsec = FUNC30(ri->i_atime_nsec);
	inode->i_ctime.tv_nsec = FUNC30(ri->i_ctime_nsec);
	inode->i_mtime.tv_nsec = FUNC30(ri->i_mtime_nsec);
	inode->i_generation = FUNC30(ri->i_generation);
	if (FUNC7(inode->i_mode))
		fi->i_current_depth = FUNC30(ri->i_current_depth);
	else if (FUNC8(inode->i_mode))
		fi->i_gc_failures[GC_FAILURE_PIN] =
					FUNC29(ri->i_gc_failures);
	fi->i_xattr_nid = FUNC30(ri->i_xattr_nid);
	fi->i_flags = FUNC30(ri->i_flags);
	if (FUNC8(inode->i_mode))
		fi->i_flags &= ~F2FS_PROJINHERIT_FL;
	fi->flags = 0;
	fi->i_advise = ri->i_advise;
	fi->i_pino = FUNC30(ri->i_pino);
	fi->i_dir_level = ri->i_dir_level;

	if (FUNC19(inode, &ri->i_ext))
		FUNC37(node_page);

	FUNC25(inode, ri);

	fi->i_extra_isize = FUNC15(inode) ?
					FUNC29(ri->i_extra_isize) : 0;

	if (FUNC22(sbi)) {
		fi->i_inline_xattr_size = FUNC29(ri->i_inline_xattr_size);
	} else if (FUNC18(inode) ||
				FUNC17(inode)) {
		fi->i_inline_xattr_size = DEFAULT_INLINE_XATTR_ADDRS;
	} else {

		/*
		 * Previous inline data or directory always reserved 200 bytes
		 * in inode layout, even if inline_xattr is disabled. In order
		 * to keep inline_dentry's structure for backward compatibility,
		 * we get the space back only from inline_data.
		 */
		fi->i_inline_xattr_size = 0;
	}

	if (!FUNC33(inode, node_page)) {
		FUNC21(node_page, 1);
		return -EFSCORRUPTED;
	}

	/* check data exist */
	if (FUNC16(inode) && !FUNC13(inode))
		FUNC10(inode, node_page);

	/* try to recover cold bit for non-dir inode */
	if (!FUNC7(inode->i_mode) && !FUNC28(node_page)) {
		FUNC34(node_page, false);
		FUNC37(node_page);
	}

	/* get rdev by using inline_info */
	FUNC9(inode, ri);

	if (FUNC8(inode->i_mode)) {
		err = FUNC11(sbi, ri);
		if (err < 0) {
			FUNC21(node_page, 1);
			return err;
		}
		if (!err)
			FUNC35(inode, FI_FIRST_BLOCK_WRITTEN);
	}

	if (!FUNC20(sbi, inode->i_ino))
		fi->last_disk_size = inode->i_size;

	if (fi->i_flags & F2FS_PROJINHERIT_FL)
		FUNC35(inode, FI_PROJ_INHERIT);

	if (FUNC15(inode) && FUNC24(sbi) &&
			FUNC0(ri, fi->i_extra_isize, i_projid))
		i_projid = (projid_t)FUNC30(ri->i_projid);
	else
		i_projid = F2FS_DEF_PROJID;
	fi->i_projid = FUNC32(&init_user_ns, i_projid);

	if (FUNC15(inode) && FUNC23(sbi) &&
			FUNC0(ri, fi->i_extra_isize, i_crtime)) {
		fi->i_crtime.tv_sec = FUNC31(ri->i_crtime);
		fi->i_crtime.tv_nsec = FUNC30(ri->i_crtime_nsec);
	}

	FUNC1(inode)->i_disk_time[0] = inode->i_atime;
	FUNC1(inode)->i_disk_time[1] = inode->i_ctime;
	FUNC1(inode)->i_disk_time[2] = inode->i_mtime;
	FUNC1(inode)->i_disk_time[3] = FUNC1(inode)->i_crtime;
	FUNC21(node_page, 1);

	FUNC40(inode);
	FUNC39(inode);
	FUNC38(inode);

	return 0;
}