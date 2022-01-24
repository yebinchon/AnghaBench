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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int u64 ;
struct super_block {int s_flags; } ;
struct inode {int i_mode; int i_nlink; int i_generation; struct super_block* i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_rdev; } ;
struct ext4_inode_info {int i_dtime; int i_flags; int i_file_acl; int i_disksize; int i_extra_isize; int /*<<< orphan*/  i_raw_lock; void** i_data; int /*<<< orphan*/  i_orphan; int /*<<< orphan*/  i_projid; } ;
struct ext4_inode {void* i_projid; void* i_extra_isize; void* i_version_hi; void* i_disk_version; void** i_block; void* i_generation; void* i_file_acl_lo; void* i_file_acl_high; void* i_flags; void* i_dtime; void* i_links_count; void* i_gid_high; void* i_uid_high; void* i_gid_low; void* i_uid_low; void* i_mode; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int projid_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_4__ {struct buffer_head* s_sbh; TYPE_1__* s_es; int /*<<< orphan*/  s_inode_size; } ;
struct TYPE_3__ {void* s_rev_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EXT4_DEF_PROJID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ext4_inode_info*,struct ext4_inode*) ; 
 scalar_t__ FUNC3 (struct ext4_inode*,struct ext4_inode_info*,int) ; 
 scalar_t__ EXT4_GOOD_OLD_INODE_SIZE ; 
 int EXT4_GOOD_OLD_REV ; 
 struct ext4_inode_info* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inode*,struct ext4_inode*) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 int EXT4_N_BLOCKS ; 
 TYPE_2__* FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_STATE_NEW ; 
 int /*<<< orphan*/  HURD_COMPAT ; 
 int /*<<< orphan*/  NO_UID32 ; 
 int SB_LAZYTIME ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 void* FUNC11 (int) ; 
 void* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int FUNC20 (int /*<<< orphan*/ *,struct ext4_inode*,struct ext4_inode_info*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct ext4_inode*,struct ext4_inode_info*) ; 
 int FUNC22 (struct inode*) ; 
 int FUNC23 (struct super_block*,struct ext4_inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct ext4_inode*,int) ; 
 int FUNC25 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ext4_inode* FUNC26 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC27 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC28 (struct super_block*,int) ; 
 scalar_t__ FUNC29 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i_atime ; 
 int /*<<< orphan*/  i_crtime ; 
 int /*<<< orphan*/  i_ctime ; 
 int /*<<< orphan*/  FUNC36 (struct inode*) ; 
 int /*<<< orphan*/  i_mtime ; 
 int /*<<< orphan*/  FUNC37 (struct inode*) ; 
 int i_version_hi ; 
 int /*<<< orphan*/  init_user_ns ; 
 scalar_t__ FUNC38 (int) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ *) ; 
 int FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct ext4_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC42 (int /*<<< orphan*/ ) ; 
 int FUNC43 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC49(handle_t *handle,
				struct inode *inode,
				struct ext4_iloc *iloc)
{
	struct ext4_inode *raw_inode = FUNC26(iloc);
	struct ext4_inode_info *ei = FUNC4(inode);
	struct buffer_head *bh = iloc->bh;
	struct super_block *sb = inode->i_sb;
	int err = 0, rc, block;
	int need_datasync = 0, set_large_file = 0;
	uid_t i_uid;
	gid_t i_gid;
	projid_t i_projid;

	FUNC45(&ei->i_raw_lock);

	/* For fields not tracked in the in-memory inode,
	 * initialise them to zero for new inodes. */
	if (FUNC29(inode, EXT4_STATE_NEW))
		FUNC41(raw_inode, 0, FUNC7(inode->i_sb)->s_inode_size);

	raw_inode->i_mode = FUNC11(inode->i_mode);
	i_uid = FUNC37(inode);
	i_gid = FUNC36(inode);
	i_projid = FUNC32(&init_user_ns, ei->i_projid);
	if (!(FUNC47(inode->i_sb, NO_UID32))) {
		raw_inode->i_uid_low = FUNC11(FUNC40(i_uid));
		raw_inode->i_gid_low = FUNC11(FUNC40(i_gid));
/*
 * Fix up interoperability with old kernels. Otherwise, old inodes get
 * re-used with the upper 16 bits of the uid/gid intact
 */
		if (ei->i_dtime && FUNC39(&ei->i_orphan)) {
			raw_inode->i_uid_high = 0;
			raw_inode->i_gid_high = 0;
		} else {
			raw_inode->i_uid_high =
				FUNC11(FUNC35(i_uid));
			raw_inode->i_gid_high =
				FUNC11(FUNC35(i_gid));
		}
	} else {
		raw_inode->i_uid_low = FUNC11(FUNC34(i_uid));
		raw_inode->i_gid_low = FUNC11(FUNC33(i_gid));
		raw_inode->i_uid_high = 0;
		raw_inode->i_gid_high = 0;
	}
	raw_inode->i_links_count = FUNC11(inode->i_nlink);

	FUNC5(i_ctime, inode, raw_inode);
	FUNC5(i_mtime, inode, raw_inode);
	FUNC5(i_atime, inode, raw_inode);
	FUNC2(i_crtime, ei, raw_inode);

	err = FUNC20(handle, raw_inode, ei);
	if (err) {
		FUNC46(&ei->i_raw_lock);
		goto out_brelse;
	}
	raw_inode->i_dtime = FUNC12(ei->i_dtime);
	raw_inode->i_flags = FUNC12(ei->i_flags & 0xFFFFFFFF);
	if (FUNC38(!FUNC48(inode->i_sb, HURD_COMPAT)))
		raw_inode->i_file_acl_high =
			FUNC11(ei->i_file_acl >> 32);
	raw_inode->i_file_acl_lo = FUNC12(ei->i_file_acl);
	if (ei->i_disksize != FUNC23(inode->i_sb, raw_inode)) {
		FUNC24(raw_inode, ei->i_disksize);
		need_datasync = 1;
	}
	if (ei->i_disksize > 0x7fffffffULL) {
		if (!FUNC17(sb) ||
				FUNC7(sb)->s_es->s_rev_level ==
		    FUNC12(EXT4_GOOD_OLD_REV))
			set_large_file = 1;
	}
	raw_inode->i_generation = FUNC12(inode->i_generation);
	if (FUNC9(inode->i_mode) || FUNC8(inode->i_mode)) {
		if (FUNC44(inode->i_rdev)) {
			raw_inode->i_block[0] =
				FUNC12(FUNC43(inode->i_rdev));
			raw_inode->i_block[1] = 0;
		} else {
			raw_inode->i_block[0] = 0;
			raw_inode->i_block[1] =
				FUNC12(FUNC42(inode->i_rdev));
			raw_inode->i_block[2] = 0;
		}
	} else if (!FUNC19(inode)) {
		for (block = 0; block < EXT4_N_BLOCKS; block++)
			raw_inode->i_block[block] = ei->i_data[block];
	}

	if (FUNC38(!FUNC48(inode->i_sb, HURD_COMPAT))) {
		u64 ivers = FUNC22(inode);

		raw_inode->i_disk_version = FUNC12(ivers);
		if (ei->i_extra_isize) {
			if (FUNC3(raw_inode, ei, i_version_hi))
				raw_inode->i_version_hi =
					FUNC12(ivers >> 32);
			raw_inode->i_extra_isize =
				FUNC11(ei->i_extra_isize);
		}
	}

	FUNC1(!FUNC18(inode->i_sb) &&
	       i_projid != EXT4_DEF_PROJID);

	if (FUNC6(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE &&
	    FUNC3(raw_inode, ei, i_projid))
		raw_inode->i_projid = FUNC12(i_projid);

	FUNC21(inode, raw_inode, ei);
	FUNC46(&ei->i_raw_lock);
	if (inode->i_sb->s_flags & SB_LAZYTIME)
		FUNC31(inode->i_sb, inode->i_ino,
					      bh->b_data);

	FUNC0(bh, "call ext4_handle_dirty_metadata");
	rc = FUNC14(handle, NULL, bh);
	if (!err)
		err = rc;
	FUNC13(inode, EXT4_STATE_NEW);
	if (set_large_file) {
		FUNC0(FUNC7(sb)->s_sbh, "get write access");
		err = FUNC25(handle, FUNC7(sb)->s_sbh);
		if (err)
			goto out_brelse;
		FUNC27(sb);
		FUNC16(handle);
		err = FUNC15(handle, sb);
	}
	FUNC30(handle, inode, need_datasync);
out_brelse:
	FUNC10(bh);
	FUNC28(inode->i_sb, err);
	return err;
}