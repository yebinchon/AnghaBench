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
typedef  int uid_t ;
struct super_block {int dummy; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; int i_mode; int i_size; scalar_t__ i_nlink; char* i_link; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_fop; void* i_generation; void* i_blocks; TYPE_4__ i_ctime; TYPE_3__ i_mtime; TYPE_2__ i_atime; } ;
struct ext2_inode_info {unsigned long i_block_group; scalar_t__* i_data; scalar_t__ i_dir_start_lookup; scalar_t__ i_state; void* i_dtime; void* i_dir_acl; void* i_file_acl; int /*<<< orphan*/  i_frag_size; int /*<<< orphan*/  i_frag_no; void* i_faddr; void* i_flags; int /*<<< orphan*/ * i_block_alloc_info; } ;
struct ext2_inode {scalar_t__* i_block; scalar_t__ i_generation; scalar_t__ i_dir_acl; scalar_t__ i_size_high; scalar_t__ i_file_acl; int /*<<< orphan*/  i_fsize; int /*<<< orphan*/  i_frag; scalar_t__ i_faddr; scalar_t__ i_flags; scalar_t__ i_blocks; scalar_t__ i_dtime; scalar_t__ i_mtime; scalar_t__ i_ctime; scalar_t__ i_atime; scalar_t__ i_size; int /*<<< orphan*/  i_links_count; int /*<<< orphan*/  i_gid_high; int /*<<< orphan*/  i_uid_high; int /*<<< orphan*/  i_gid_low; int /*<<< orphan*/  i_uid_low; int /*<<< orphan*/  i_mode; } ;
struct buffer_head {int dummy; } ;
typedef  int gid_t ;
typedef  int __u64 ;
struct TYPE_5__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 long EFSCORRUPTED ; 
 long EIO ; 
 long ENOMEM ; 
 struct inode* FUNC0 (long) ; 
 long ESTALE ; 
 struct ext2_inode_info* FUNC1 (struct inode*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int EXT2_N_BLOCKS ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct ext2_inode*) ; 
 int I_NEW ; 
 int /*<<< orphan*/  NOBH ; 
 int /*<<< orphan*/  NO_UID32 ; 
 long FUNC5 (struct ext2_inode*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  ext2_aops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  ext2_dir_inode_operations ; 
 int /*<<< orphan*/  ext2_dir_operations ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,char*,char*,void*) ; 
 int /*<<< orphan*/  ext2_fast_symlink_inode_operations ; 
 struct ext2_inode* FUNC12 (int /*<<< orphan*/ ,unsigned long,struct buffer_head**) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  ext2_nobh_aops ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  ext2_special_inode_operations ; 
 int /*<<< orphan*/  ext2_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 struct inode* FUNC20 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 void* FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC26 (void*) ; 
 int /*<<< orphan*/  FUNC27 (void*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,int) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 

struct inode *FUNC31 (struct super_block *sb, unsigned long ino)
{
	struct ext2_inode_info *ei;
	struct buffer_head * bh = NULL;
	struct ext2_inode *raw_inode;
	struct inode *inode;
	long ret = -EIO;
	int n;
	uid_t i_uid;
	gid_t i_gid;

	inode = FUNC20(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	ei = FUNC1(inode);
	ei->i_block_alloc_info = NULL;

	raw_inode = FUNC12(inode->i_sb, ino, &bh);
	if (FUNC4(raw_inode)) {
		ret = FUNC5(raw_inode);
 		goto bad_inode;
	}

	inode->i_mode = FUNC23(raw_inode->i_mode);
	i_uid = (uid_t)FUNC23(raw_inode->i_uid_low);
	i_gid = (gid_t)FUNC23(raw_inode->i_gid_low);
	if (!(FUNC29 (inode->i_sb, NO_UID32))) {
		i_uid |= FUNC23(raw_inode->i_uid_high) << 16;
		i_gid |= FUNC23(raw_inode->i_gid_high) << 16;
	}
	FUNC18(inode, i_uid);
	FUNC16(inode, i_gid);
	FUNC28(inode, FUNC23(raw_inode->i_links_count));
	inode->i_size = FUNC24(raw_inode->i_size);
	inode->i_atime.tv_sec = (signed)FUNC24(raw_inode->i_atime);
	inode->i_ctime.tv_sec = (signed)FUNC24(raw_inode->i_ctime);
	inode->i_mtime.tv_sec = (signed)FUNC24(raw_inode->i_mtime);
	inode->i_atime.tv_nsec = inode->i_mtime.tv_nsec = inode->i_ctime.tv_nsec = 0;
	ei->i_dtime = FUNC24(raw_inode->i_dtime);
	/* We now have enough fields to check if the inode was active or not.
	 * This is needed because nfsd might try to access dead inodes
	 * the test is that same one that e2fsck uses
	 * NeilBrown 1999oct15
	 */
	if (inode->i_nlink == 0 && (inode->i_mode == 0 || ei->i_dtime)) {
		/* this inode is deleted */
		ret = -ESTALE;
		goto bad_inode;
	}
	inode->i_blocks = FUNC24(raw_inode->i_blocks);
	ei->i_flags = FUNC24(raw_inode->i_flags);
	FUNC15(inode);
	ei->i_faddr = FUNC24(raw_inode->i_faddr);
	ei->i_frag_no = raw_inode->i_frag;
	ei->i_frag_size = raw_inode->i_fsize;
	ei->i_file_acl = FUNC24(raw_inode->i_file_acl);
	ei->i_dir_acl = 0;

	if (ei->i_file_acl &&
	    !FUNC10(FUNC3(sb), ei->i_file_acl, 1)) {
		FUNC11(sb, "ext2_iget", "bad extended attribute block %u",
			   ei->i_file_acl);
		ret = -EFSCORRUPTED;
		goto bad_inode;
	}

	if (FUNC8(inode->i_mode))
		inode->i_size |= ((__u64)FUNC24(raw_inode->i_size_high)) << 32;
	else
		ei->i_dir_acl = FUNC24(raw_inode->i_dir_acl);
	if (FUNC17(inode) < 0) {
		ret = -EFSCORRUPTED;
		goto bad_inode;
	}
	ei->i_dtime = 0;
	inode->i_generation = FUNC24(raw_inode->i_generation);
	ei->i_state = 0;
	ei->i_block_group = (ino - 1) / FUNC2(inode->i_sb);
	ei->i_dir_start_lookup = 0;

	/*
	 * NOTE! The in-memory inode i_data array is in little-endian order
	 * even on big-endian machines: we do NOT byteswap the block numbers!
	 */
	for (n = 0; n < EXT2_N_BLOCKS; n++)
		ei->i_data[n] = raw_inode->i_block[n];

	if (FUNC8(inode->i_mode)) {
		FUNC14(inode);
	} else if (FUNC6(inode->i_mode)) {
		inode->i_op = &ext2_dir_inode_operations;
		inode->i_fop = &ext2_dir_operations;
		if (FUNC29(inode->i_sb, NOBH))
			inode->i_mapping->a_ops = &ext2_nobh_aops;
		else
			inode->i_mapping->a_ops = &ext2_aops;
	} else if (FUNC7(inode->i_mode)) {
		if (FUNC13(inode)) {
			inode->i_link = (char *)ei->i_data;
			inode->i_op = &ext2_fast_symlink_inode_operations;
			FUNC25(ei->i_data, inode->i_size,
				sizeof(ei->i_data) - 1);
		} else {
			inode->i_op = &ext2_symlink_inode_operations;
			FUNC22(inode);
			if (FUNC29(inode->i_sb, NOBH))
				inode->i_mapping->a_ops = &ext2_nobh_aops;
			else
				inode->i_mapping->a_ops = &ext2_aops;
		}
	} else {
		inode->i_op = &ext2_special_inode_operations;
		if (raw_inode->i_block[0])
			FUNC21(inode, inode->i_mode,
			   FUNC27(FUNC24(raw_inode->i_block[0])));
		else 
			FUNC21(inode, inode->i_mode,
			   FUNC26(FUNC24(raw_inode->i_block[1])));
	}
	FUNC9 (bh);
	FUNC30(inode);
	return inode;
	
bad_inode:
	FUNC9(bh);
	FUNC19(inode);
	return FUNC0(ret);
}