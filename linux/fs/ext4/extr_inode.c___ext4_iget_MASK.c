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
typedef  int u64 ;
struct TYPE_6__ {void* t_tid; } ;
typedef  TYPE_2__ transaction_t ;
typedef  void* tid_t ;
struct super_block {int dummy; } ;
struct inode {int i_state; int i_mode; scalar_t__ i_nlink; unsigned long i_generation; char* i_link; struct super_block* i_sb; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_size; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_ino; } ;
struct ext4_sb_info {int s_mount_state; void* s_csum_seed; TYPE_1__* s_es; TYPE_3__* s_journal; } ;
struct ext4_inode_info {int i_extra_isize; unsigned long i_dtime; unsigned long i_flags; unsigned long i_file_acl; scalar_t__* i_data; void* i_datasync_tid; void* i_sync_tid; int /*<<< orphan*/  i_orphan; int /*<<< orphan*/  i_last_alloc_group; int /*<<< orphan*/  i_block_group; scalar_t__ i_reserved_quota; int /*<<< orphan*/  i_disksize; scalar_t__ i_dir_start_lookup; scalar_t__ i_inline_off; int /*<<< orphan*/  i_projid; void* i_csum_seed; } ;
struct ext4_inode {scalar_t__ i_links_count; scalar_t__ i_mode; scalar_t__ i_extra_isize; scalar_t__ i_uid_low; scalar_t__ i_gid_low; scalar_t__ i_uid_high; scalar_t__ i_gid_high; scalar_t__ i_file_acl_high; scalar_t__* i_block; scalar_t__ i_version_hi; scalar_t__ i_disk_version; scalar_t__ i_generation; scalar_t__ i_file_acl_lo; scalar_t__ i_flags; scalar_t__ i_dtime; scalar_t__ i_projid; } ;
struct ext4_iloc {int /*<<< orphan*/ * bh; int /*<<< orphan*/  block_group; } ;
typedef  scalar_t__ projid_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_7__ {int /*<<< orphan*/  j_state_lock; void* j_commit_sequence; TYPE_2__* j_committing_transaction; TYPE_2__* j_running_transaction; } ;
typedef  TYPE_3__ journal_t ;
typedef  int /*<<< orphan*/  inum ;
typedef  int gid_t ;
typedef  int /*<<< orphan*/  gen ;
typedef  int ext4_iget_flags ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u64 ;
typedef  void* __u32 ;
typedef  scalar_t__ __le32 ;
struct TYPE_8__ {int /*<<< orphan*/  comm; } ;
struct TYPE_5__ {scalar_t__ s_inodes_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long EFSBADCRC ; 
 long EFSCORRUPTED ; 
 long ENOMEM ; 
 struct inode* FUNC1 (long) ; 
 long ESTALE ; 
 unsigned long EXT4_BOOT_LOADER_INO ; 
 scalar_t__ EXT4_DEF_PROJID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ext4_inode_info*,struct ext4_inode*) ; 
 unsigned long FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct ext4_inode*,struct ext4_inode_info*,scalar_t__) ; 
 int EXT4_GOOD_OLD_INODE_SIZE ; 
 struct ext4_inode_info* FUNC5 (struct inode*) ; 
 int EXT4_IGET_HANDLE ; 
 int EXT4_IGET_SPECIAL ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct inode*,struct ext4_inode*) ; 
 int FUNC7 (struct super_block*) ; 
 int EXT4_N_BLOCKS ; 
 int EXT4_ORPHAN_FS ; 
 unsigned long EXT4_ROOT_INO ; 
 struct ext4_sb_info* FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  HURD_COMPAT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int I_NEW ; 
 int /*<<< orphan*/  NO_UID32 ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,char const*,unsigned int,char*,unsigned long,int /*<<< orphan*/ ) ; 
 long FUNC22 (struct inode*,struct ext4_iloc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 TYPE_4__* current ; 
 void* FUNC25 (struct ext4_sb_info*,void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (struct ext4_inode_info*) ; 
 int /*<<< orphan*/  FUNC27 (struct ext4_sb_info*,int,int) ; 
 int /*<<< orphan*/  ext4_dir_inode_operations ; 
 int /*<<< orphan*/  ext4_dir_operations ; 
 int /*<<< orphan*/  ext4_encrypted_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,char const*,unsigned int,int /*<<< orphan*/ ,char*,...) ; 
 long FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  ext4_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  ext4_file_inode_operations ; 
 int /*<<< orphan*/  ext4_file_operations ; 
 scalar_t__ FUNC30 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC31 (struct super_block*) ; 
 scalar_t__ FUNC32 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*) ; 
 scalar_t__ FUNC34 (struct super_block*) ; 
 long FUNC35 (struct inode*,struct ext4_inode*,struct ext4_inode_info*) ; 
 long FUNC36 (struct inode*) ; 
 int /*<<< orphan*/  FUNC37 (struct ext4_inode*,struct ext4_inode_info*) ; 
 int /*<<< orphan*/  FUNC38 (struct inode*,struct ext4_inode*,struct ext4_inode_info*) ; 
 scalar_t__ FUNC39 (struct inode*) ; 
 int /*<<< orphan*/  FUNC40 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC41 (struct super_block*,struct ext4_inode*) ; 
 struct ext4_inode* FUNC42 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC43 (struct inode*) ; 
 int /*<<< orphan*/  FUNC44 (struct inode*) ; 
 int /*<<< orphan*/  ext4_special_inode_operations ; 
 int /*<<< orphan*/  ext4_symlink_inode_operations ; 
 scalar_t__ FUNC45 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i_atime ; 
 int /*<<< orphan*/  i_crtime ; 
 int /*<<< orphan*/  i_ctime ; 
 int /*<<< orphan*/  FUNC46 (struct inode*,int) ; 
 int /*<<< orphan*/  i_mtime ; 
 int /*<<< orphan*/  FUNC47 (struct inode*) ; 
 int /*<<< orphan*/  FUNC48 (struct inode*,int) ; 
 scalar_t__ i_version_hi ; 
 int /*<<< orphan*/  FUNC49 (struct inode*) ; 
 struct inode* FUNC50 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC51 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC52 (struct inode*) ; 
 int FUNC53 (scalar_t__) ; 
 unsigned long FUNC54 (scalar_t__) ; 
 scalar_t__ FUNC55 (int) ; 
 int /*<<< orphan*/  FUNC56 (struct inode*) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC58 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC59 (unsigned long) ; 
 int /*<<< orphan*/  FUNC60 (unsigned long) ; 
 int /*<<< orphan*/  FUNC61 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC62 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC63 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC64 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC65 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC66 (struct inode*) ; 

struct inode *FUNC67(struct super_block *sb, unsigned long ino,
			  ext4_iget_flags flags, const char *function,
			  unsigned int line)
{
	struct ext4_iloc iloc;
	struct ext4_inode *raw_inode;
	struct ext4_inode_info *ei;
	struct inode *inode;
	journal_t *journal = FUNC8(sb)->s_journal;
	long ret;
	loff_t size;
	int block;
	uid_t i_uid;
	gid_t i_gid;
	projid_t i_projid;

	if ((!(flags & EXT4_IGET_SPECIAL) &&
	     (ino < FUNC3(sb) && ino != EXT4_ROOT_INO)) ||
	    (ino < EXT4_ROOT_INO) ||
	    (ino > FUNC54(FUNC8(sb)->s_es->s_inodes_count))) {
		if (flags & EXT4_IGET_HANDLE)
			return FUNC1(-ESTALE);
		FUNC21(sb, function, line,
			     "inode #%lu: comm %s: iget: illegal inode #",
			     ino, current->comm);
		return FUNC1(-EFSCORRUPTED);
	}

	inode = FUNC50(sb, ino);
	if (!inode)
		return FUNC1(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	ei = FUNC5(inode);
	iloc.bh = NULL;

	ret = FUNC22(inode, &iloc, 0);
	if (ret < 0)
		goto bad_inode;
	raw_inode = FUNC42(&iloc);

	if ((ino == EXT4_ROOT_INO) && (raw_inode->i_links_count == 0)) {
		FUNC28(inode, function, line, 0,
				 "iget: root inode unallocated");
		ret = -EFSCORRUPTED;
		goto bad_inode;
	}

	if ((flags & EXT4_IGET_HANDLE) &&
	    (raw_inode->i_links_count == 0) && (raw_inode->i_mode == 0)) {
		ret = -ESTALE;
		goto bad_inode;
	}

	if (FUNC7(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE) {
		ei->i_extra_isize = FUNC53(raw_inode->i_extra_isize);
		if (EXT4_GOOD_OLD_INODE_SIZE + ei->i_extra_isize >
			FUNC7(inode->i_sb) ||
		    (ei->i_extra_isize & 3)) {
			FUNC28(inode, function, line, 0,
					 "iget: bad extra_isize %u "
					 "(inode size %u)",
					 ei->i_extra_isize,
					 FUNC7(inode->i_sb));
			ret = -EFSCORRUPTED;
			goto bad_inode;
		}
	} else
		ei->i_extra_isize = 0;

	/* Precompute checksum seed for inode metadata */
	if (FUNC34(sb)) {
		struct ext4_sb_info *sbi = FUNC8(inode->i_sb);
		__u32 csum;
		__le32 inum = FUNC24(inode->i_ino);
		__le32 gen = raw_inode->i_generation;
		csum = FUNC25(sbi, sbi->s_csum_seed, (__u8 *)&inum,
				   sizeof(inum));
		ei->i_csum_seed = FUNC25(sbi, csum, (__u8 *)&gen,
					      sizeof(gen));
	}

	if (!FUNC38(inode, raw_inode, ei)) {
		FUNC28(inode, function, line, 0,
				 "iget: checksum invalid");
		ret = -EFSBADCRC;
		goto bad_inode;
	}

	inode->i_mode = FUNC53(raw_inode->i_mode);
	i_uid = (uid_t)FUNC53(raw_inode->i_uid_low);
	i_gid = (gid_t)FUNC53(raw_inode->i_gid_low);
	if (FUNC32(sb) &&
	    FUNC7(sb) > EXT4_GOOD_OLD_INODE_SIZE &&
	    FUNC4(raw_inode, ei, i_projid))
		i_projid = (projid_t)FUNC54(raw_inode->i_projid);
	else
		i_projid = EXT4_DEF_PROJID;

	if (!(FUNC64(inode->i_sb, NO_UID32))) {
		i_uid |= FUNC53(raw_inode->i_uid_high) << 16;
		i_gid |= FUNC53(raw_inode->i_gid_high) << 16;
	}
	FUNC48(inode, i_uid);
	FUNC46(inode, i_gid);
	ei->i_projid = FUNC57(&init_user_ns, i_projid);
	FUNC63(inode, FUNC53(raw_inode->i_links_count));

	FUNC26(ei);	/* Only relevant on 32-bit archs */
	ei->i_inline_off = 0;
	ei->i_dir_start_lookup = 0;
	ei->i_dtime = FUNC54(raw_inode->i_dtime);
	/* We now have enough fields to check if the inode was active or not.
	 * This is needed because nfsd might try to access dead inodes
	 * the test is that same one that e2fsck uses
	 * NeilBrown 1999oct15
	 */
	if (inode->i_nlink == 0) {
		if ((inode->i_mode == 0 ||
		     !(FUNC8(inode->i_sb)->s_mount_state & EXT4_ORPHAN_FS)) &&
		    ino != EXT4_BOOT_LOADER_INO) {
			/* this inode is deleted */
			ret = -ESTALE;
			goto bad_inode;
		}
		/* The only unlinked inodes we let through here have
		 * valid i_mode and are being read by the orphan
		 * recovery code: that's fine, we're about to complete
		 * the process of deleting those.
		 * OR it is the EXT4_BOOT_LOADER_INO which is
		 * not initialized on a new filesystem. */
	}
	ei->i_flags = FUNC54(raw_inode->i_flags);
	FUNC44(inode);
	inode->i_blocks = FUNC37(raw_inode, ei);
	ei->i_file_acl = FUNC54(raw_inode->i_file_acl_lo);
	if (FUNC30(sb))
		ei->i_file_acl |=
			((__u64)FUNC53(raw_inode->i_file_acl_high)) << 32;
	inode->i_size = FUNC41(sb, raw_inode);
	if ((size = FUNC47(inode)) < 0) {
		FUNC28(inode, function, line, 0,
				 "iget: bad i_size value: %lld", size);
		ret = -EFSCORRUPTED;
		goto bad_inode;
	}
	ei->i_disksize = inode->i_size;
#ifdef CONFIG_QUOTA
	ei->i_reserved_quota = 0;
#endif
	inode->i_generation = FUNC54(raw_inode->i_generation);
	ei->i_block_group = iloc.block_group;
	ei->i_last_alloc_group = ~0;
	/*
	 * NOTE! The in-memory inode i_data array is in little-endian order
	 * even on big-endian machines: we do NOT byteswap the block numbers!
	 */
	for (block = 0; block < EXT4_N_BLOCKS; block++)
		ei->i_data[block] = raw_inode->i_block[block];
	FUNC9(&ei->i_orphan);

	/*
	 * Set transaction id's of transactions that have to be committed
	 * to finish f[data]sync. We set them to currently running transaction
	 * as we cannot be sure that the inode or some of its metadata isn't
	 * part of the transaction - the inode could have been reclaimed and
	 * now it is reread from disk.
	 */
	if (journal) {
		transaction_t *transaction;
		tid_t tid;

		FUNC61(&journal->j_state_lock);
		if (journal->j_running_transaction)
			transaction = journal->j_running_transaction;
		else
			transaction = journal->j_committing_transaction;
		if (transaction)
			tid = transaction->t_tid;
		else
			tid = journal->j_commit_sequence;
		FUNC62(&journal->j_state_lock);
		ei->i_sync_tid = tid;
		ei->i_datasync_tid = tid;
	}

	if (FUNC7(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE) {
		if (ei->i_extra_isize == 0) {
			/* The extra space is currently unused. Use it. */
			FUNC0(sizeof(struct ext4_inode) & 3);
			ei->i_extra_isize = sizeof(struct ext4_inode) -
					    EXT4_GOOD_OLD_INODE_SIZE;
		} else {
			ret = FUNC35(inode, raw_inode, ei);
			if (ret)
				goto bad_inode;
		}
	}

	FUNC6(i_ctime, inode, raw_inode);
	FUNC6(i_mtime, inode, raw_inode);
	FUNC6(i_atime, inode, raw_inode);
	FUNC2(i_crtime, ei, raw_inode);

	if (FUNC55(!FUNC65(inode->i_sb, HURD_COMPAT))) {
		u64 ivers = FUNC54(raw_inode->i_disk_version);

		if (FUNC7(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE) {
			if (FUNC4(raw_inode, ei, i_version_hi))
				ivers |=
		    (__u64)(FUNC54(raw_inode->i_version_hi)) << 32;
		}
		FUNC40(inode, ivers);
	}

	ret = 0;
	if (ei->i_file_acl &&
	    !FUNC27(FUNC8(sb), ei->i_file_acl, 1)) {
		FUNC28(inode, function, line, 0,
				 "iget: bad extended attribute block %llu",
				 ei->i_file_acl);
		ret = -EFSCORRUPTED;
		goto bad_inode;
	} else if (!FUNC33(inode)) {
		/* validate the block references in the inode */
		if (FUNC19(inode->i_mode) || FUNC16(inode->i_mode) ||
		   (FUNC18(inode->i_mode) &&
		    !FUNC39(inode))) {
			if (FUNC45(inode, EXT4_INODE_EXTENTS))
				ret = FUNC29(inode);
			else
				ret = FUNC36(inode);
		}
	}
	if (ret)
		goto bad_inode;

	if (FUNC19(inode->i_mode)) {
		inode->i_op = &ext4_file_inode_operations;
		inode->i_fop = &ext4_file_operations;
		FUNC43(inode);
	} else if (FUNC16(inode->i_mode)) {
		inode->i_op = &ext4_dir_inode_operations;
		inode->i_fop = &ext4_dir_operations;
	} else if (FUNC18(inode->i_mode)) {
		/* VFS does not allow setting these so must be corruption */
		if (FUNC10(inode) || FUNC13(inode)) {
			FUNC28(inode, function, line, 0,
					 "iget: immutable or append flags "
					 "not allowed on symlinks");
			ret = -EFSCORRUPTED;
			goto bad_inode;
		}
		if (FUNC12(inode)) {
			inode->i_op = &ext4_encrypted_symlink_inode_operations;
			FUNC43(inode);
		} else if (FUNC39(inode)) {
			inode->i_link = (char *)ei->i_data;
			inode->i_op = &ext4_fast_symlink_inode_operations;
			FUNC58(ei->i_data, inode->i_size,
				sizeof(ei->i_data) - 1);
		} else {
			inode->i_op = &ext4_symlink_inode_operations;
			FUNC43(inode);
		}
		FUNC52(inode);
	} else if (FUNC15(inode->i_mode) || FUNC14(inode->i_mode) ||
	      FUNC17(inode->i_mode) || FUNC20(inode->i_mode)) {
		inode->i_op = &ext4_special_inode_operations;
		if (raw_inode->i_block[0])
			FUNC51(inode, inode->i_mode,
			   FUNC60(FUNC54(raw_inode->i_block[0])));
		else
			FUNC51(inode, inode->i_mode,
			   FUNC59(FUNC54(raw_inode->i_block[1])));
	} else if (ino == EXT4_BOOT_LOADER_INO) {
		FUNC56(inode);
	} else {
		ret = -EFSCORRUPTED;
		FUNC28(inode, function, line, 0,
				 "iget: bogus i_mode (%o)", inode->i_mode);
		goto bad_inode;
	}
	if (FUNC11(inode) && !FUNC31(inode->i_sb))
		FUNC28(inode, function, line, 0,
				 "casefold flag without casefold feature");
	FUNC23(iloc.bh);

	FUNC66(inode);
	return inode;

bad_inode:
	FUNC23(iloc.bh);
	FUNC49(inode);
	return FUNC1(ret);
}