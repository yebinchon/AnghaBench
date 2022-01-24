#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* umode_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct posix_acl {int a_count; TYPE_3__* h_transaction; int /*<<< orphan*/  b_data; } ;
struct inode {unsigned long i_ino; unsigned long i_generation; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; scalar_t__ i_blocks; struct super_block* i_sb; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; void* i_mode; int /*<<< orphan*/  i_nlink; } ;
struct ext4_sb_info {int s_inode_goal; int s_csum_seed; int /*<<< orphan*/  s_want_extra_isize; TYPE_2__* s_flex_groups; scalar_t__ s_log_groups_per_flex; int /*<<< orphan*/  s_dirs_counter; int /*<<< orphan*/  s_freeinodes_counter; TYPE_1__* s_es; scalar_t__ s_journal; } ;
struct ext4_inode_info {size_t i_last_alloc_group; int i_flags; size_t i_block_group; int /*<<< orphan*/  i_datasync_tid; int /*<<< orphan*/  i_sync_tid; scalar_t__ i_inline_off; int /*<<< orphan*/  i_extra_isize; void* i_csum_seed; scalar_t__ i_dtime; scalar_t__ i_file_acl; scalar_t__ i_disksize; scalar_t__ i_dir_start_lookup; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_crtime; int /*<<< orphan*/  i_projid; } ;
struct ext4_group_info {int /*<<< orphan*/  alloc_sem; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int a_count; TYPE_3__* h_transaction; int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  inum ;
typedef  struct posix_acl handle_t ;
typedef  int /*<<< orphan*/  gen ;
typedef  size_t ext4_group_t ;
typedef  int /*<<< orphan*/  ext4_acl_entry ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_5__ {int /*<<< orphan*/  free_inodes; int /*<<< orphan*/  used_dirs; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_inodes_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct posix_acl*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ext4_sb_info*) ; 
 int EIO ; 
 int ENOKEY ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EPERM ; 
 struct inode* FUNC3 (struct posix_acl*) ; 
 struct inode* FUNC4 (int) ; 
 int /*<<< orphan*/  EXT4_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  EXT4_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  EXT4_DEF_PROJID ; 
 int EXT4_EA_INODE_FL ; 
 unsigned long FUNC5 (struct super_block*) ; 
 int EXT4_FL_INHERITED ; 
 int /*<<< orphan*/  EXT4_GROUP_INFO_IBITMAP_CORRUPT ; 
 struct ext4_inode_info* FUNC6 (struct inode*) ; 
 size_t FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  EXT4_INODE_PROJINHERIT ; 
 scalar_t__ FUNC8 (struct ext4_group_info*) ; 
 struct ext4_sb_info* FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 int /*<<< orphan*/  EXT4_STATE_NEW ; 
 int FSCRYPT_SET_CONTEXT_MAX_SIZE ; 
 int /*<<< orphan*/  GRPID ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (struct posix_acl*) ; 
 int FUNC13 (struct posix_acl*) ; 
 scalar_t__ FUNC14 (void*) ; 
 scalar_t__ FUNC15 (void*) ; 
 scalar_t__ FUNC16 (void*) ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 struct posix_acl* FUNC17 (struct super_block*,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (unsigned long) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int FUNC31 (struct inode*) ; 
 int /*<<< orphan*/  FUNC32 (struct super_block*,size_t,struct ext4_group_desc*,struct posix_acl*) ; 
 void* FUNC33 (struct ext4_sb_info*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC34 (struct ext4_inode_info*) ; 
 int /*<<< orphan*/  FUNC35 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC36 (struct super_block*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC37 (struct posix_acl*,struct inode*) ; 
 size_t FUNC38 (struct ext4_sb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC39 (struct ext4_sb_info*) ; 
 int /*<<< orphan*/  FUNC40 (struct super_block*,size_t,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC41 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC42 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC43 (struct super_block*,struct ext4_group_desc*,scalar_t__) ; 
 struct ext4_group_desc* FUNC44 (struct super_block*,size_t,struct posix_acl**) ; 
 struct ext4_group_info* FUNC45 (struct super_block*,size_t) ; 
 size_t FUNC46 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC47 (struct super_block*,size_t,struct ext4_group_desc*) ; 
 int FUNC48 (struct posix_acl*,int /*<<< orphan*/ *,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC49 (struct posix_acl*) ; 
 scalar_t__ FUNC50 (struct posix_acl*) ; 
 scalar_t__ FUNC51 (struct super_block*) ; 
 scalar_t__ FUNC52 (struct super_block*) ; 
 scalar_t__ FUNC53 (struct super_block*) ; 
 scalar_t__ FUNC54 (struct super_block*) ; 
 scalar_t__ FUNC55 (struct super_block*) ; 
 int FUNC56 (struct posix_acl*,struct inode*,struct inode*) ; 
 int FUNC57 (struct posix_acl*,struct inode*,struct inode*,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC58 (struct super_block*,size_t,struct ext4_group_desc*,struct posix_acl*,int) ; 
 size_t FUNC59 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC60 (struct super_block*,struct ext4_group_desc*,unsigned long) ; 
 int FUNC61 (struct posix_acl*,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC62 (struct super_block*,size_t) ; 
 int /*<<< orphan*/  FUNC63 (struct super_block*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC64 (struct posix_acl*,struct inode*) ; 
 int FUNC65 (void*,int) ; 
 struct posix_acl* FUNC66 (struct super_block*,size_t) ; 
 struct posix_acl* FUNC67 (struct super_block*,size_t) ; 
 int /*<<< orphan*/  FUNC68 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC69 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC70 (struct inode*) ; 
 int /*<<< orphan*/  FUNC71 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC72 (struct super_block*,int) ; 
 int FUNC73 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC74 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC75 (struct super_block*,size_t) ; 
 scalar_t__ FUNC76 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC77 (struct super_block*,struct ext4_group_desc*,scalar_t__) ; 
 int FUNC78 (struct super_block*,struct inode*,size_t*,void*,struct qstr const*) ; 
 int FUNC79 (struct super_block*,struct inode*,size_t*,void*) ; 
 int FUNC80 (struct super_block*,size_t,struct posix_acl*,unsigned long*) ; 
 int FUNC81 (struct inode*) ; 
 int /*<<< orphan*/  FUNC82 (struct inode*) ; 
 int FUNC83 (struct inode*,struct inode*,struct posix_acl*,int) ; 
 struct posix_acl* FUNC84 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC85 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC86 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC87 (struct inode*,struct inode*,void*) ; 
 scalar_t__ FUNC88 (struct inode*) ; 
 int /*<<< orphan*/  FUNC89 (struct inode*) ; 
 int FUNC90 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC91 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC92 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC93 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC94 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC95 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC96 (struct posix_acl*) ; 
 unsigned long FUNC97 () ; 
 scalar_t__ FUNC98 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC99 (struct inode*,struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC100 (struct inode*,void*) ; 
 scalar_t__ FUNC101 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC102 (struct inode*) ; 
 int /*<<< orphan*/  FUNC103 (int /*<<< orphan*/ *) ; 

struct inode *FUNC104(handle_t *handle, struct inode *dir,
			       umode_t mode, const struct qstr *qstr,
			       __u32 goal, uid_t *owner, __u32 i_flags,
			       int handle_type, unsigned int line_no,
			       int nblocks)
{
	struct super_block *sb;
	struct buffer_head *inode_bitmap_bh = NULL;
	struct buffer_head *group_desc_bh;
	ext4_group_t ngroups, group = 0;
	unsigned long ino = 0;
	struct inode *inode;
	struct ext4_group_desc *gdp = NULL;
	struct ext4_inode_info *ei;
	struct ext4_sb_info *sbi;
	int ret2, err;
	struct inode *ret;
	ext4_group_t i;
	ext4_group_t flex_group;
	struct ext4_group_info *grp;
	int encrypt = 0;

	/* Cannot create files in a deleted directory */
	if (!dir || !dir->i_nlink)
		return FUNC4(-EPERM);

	sb = dir->i_sb;
	sbi = FUNC9(sb);

	if (FUNC101(FUNC39(sbi)))
		return FUNC4(-EIO);

	if ((FUNC11(dir) || FUNC2(sbi)) &&
	    (FUNC16(mode) || FUNC14(mode) || FUNC15(mode)) &&
	    !(i_flags & EXT4_EA_INODE_FL)) {
		err = FUNC81(dir);
		if (err)
			return FUNC4(err);
		if (!FUNC82(dir))
			return FUNC4(-ENOKEY);
		encrypt = 1;
	}

	if (!handle && sbi->s_journal && !(i_flags & EXT4_EA_INODE_FL)) {
#ifdef CONFIG_EXT4_FS_POSIX_ACL
		struct posix_acl *p = get_acl(dir, ACL_TYPE_DEFAULT);

		if (IS_ERR(p))
			return ERR_CAST(p);
		if (p) {
			int acl_size = p->a_count * sizeof(ext4_acl_entry);

			nblocks += (S_ISDIR(mode) ? 2 : 1) *
				__ext4_xattr_set_credits(sb, NULL /* inode */,
					NULL /* block_bh */, acl_size,
					true /* is_create */);
			posix_acl_release(p);
		}
#endif

#ifdef CONFIG_SECURITY
		{
			int num_security_xattrs = 1;

#ifdef CONFIG_INTEGRITY
			num_security_xattrs++;
#endif
			/*
			 * We assume that security xattrs are never
			 * more than 1k.  In practice they are under
			 * 128 bytes.
			 */
			nblocks += num_security_xattrs *
				__ext4_xattr_set_credits(sb, NULL /* inode */,
					NULL /* block_bh */, 1024,
					true /* is_create */);
		}
#endif
		if (encrypt)
			nblocks += FUNC18(sb,
					NULL /* inode */, NULL /* block_bh */,
					FSCRYPT_SET_CONTEXT_MAX_SIZE,
					true /* is_create */);
	}

	ngroups = FUNC46(sb);
	FUNC100(dir, mode);
	inode = FUNC93(sb);
	if (!inode)
		return FUNC4(-ENOMEM);
	ei = FUNC6(inode);

	/*
	 * Initialize owners and quota early so that we don't have to account
	 * for quota initialization worst case in standard inode creating
	 * transaction
	 */
	if (owner) {
		inode->i_mode = mode;
		FUNC86(inode, owner[0]);
		FUNC85(inode, owner[1]);
	} else if (FUNC98(sb, GRPID)) {
		inode->i_mode = mode;
		inode->i_uid = FUNC25();
		inode->i_gid = dir->i_gid;
	} else
		FUNC87(inode, dir, mode);

	if (FUNC53(sb) &&
	    FUNC74(dir, EXT4_INODE_PROJINHERIT))
		ei->i_projid = FUNC6(dir)->i_projid;
	else
		ei->i_projid = FUNC91(&init_user_ns, EXT4_DEF_PROJID);

	err = FUNC31(inode);
	if (err)
		goto out;

	if (!goal)
		goal = sbi->s_inode_goal;

	if (goal && goal <= FUNC90(sbi->s_es->s_inodes_count)) {
		group = (goal - 1) / FUNC7(sb);
		ino = (goal - 1) % FUNC7(sb);
		ret2 = 0;
		goto got_group;
	}

	if (FUNC14(mode))
		ret2 = FUNC78(sb, dir, &group, mode, qstr);
	else
		ret2 = FUNC79(sb, dir, &group, mode);

got_group:
	FUNC6(dir)->i_last_alloc_group = group;
	err = -ENOSPC;
	if (ret2 == -1)
		goto out;

	/*
	 * Normally we will only go through one pass of this loop,
	 * unless we get unlucky and it turns out the group we selected
	 * had its last inode grabbed by someone else.
	 */
	for (i = 0; i < ngroups; i++, ino = 0) {
		err = -EIO;

		gdp = FUNC44(sb, group, &group_desc_bh);
		if (!gdp)
			goto out;

		/*
		 * Check free inodes count before loading bitmap.
		 */
		if (FUNC42(sb, gdp) == 0)
			goto next_group;

		grp = FUNC45(sb, group);
		/* Skip groups with already-known suspicious inode tables */
		if (FUNC8(grp))
			goto next_group;

		FUNC21(inode_bitmap_bh);
		inode_bitmap_bh = FUNC67(sb, group);
		/* Skip groups with suspicious inode tables */
		if (FUNC8(grp) ||
		    FUNC12(inode_bitmap_bh)) {
			inode_bitmap_bh = NULL;
			goto next_group;
		}

repeat_in_this_group:
		ret2 = FUNC80(sb, group, inode_bitmap_bh, &ino);
		if (!ret2)
			goto next_group;

		if (group == 0 && (ino + 1) < FUNC5(sb)) {
			FUNC36(sb, "reserved inode found cleared - "
				   "inode=%lu", ino + 1);
			FUNC63(sb, group,
					EXT4_GROUP_INFO_IBITMAP_CORRUPT);
			goto next_group;
		}

		if (!handle) {
			FUNC1(nblocks <= 0);
			handle = FUNC17(dir->i_sb, line_no,
							 handle_type, nblocks,
							 0);
			if (FUNC12(handle)) {
				err = FUNC13(handle);
				FUNC72(sb, err);
				goto out;
			}
		}
		FUNC0(inode_bitmap_bh, "get_write_access");
		err = FUNC61(handle, inode_bitmap_bh);
		if (err) {
			FUNC72(sb, err);
			goto out;
		}
		FUNC62(sb, group);
		ret2 = FUNC73(ino, inode_bitmap_bh->b_data);
		if (ret2) {
			/* Someone already took the bit. Repeat the search
			 * with lock held.
			 */
			ret2 = FUNC80(sb, group, inode_bitmap_bh, &ino);
			if (ret2) {
				FUNC68(ino, inode_bitmap_bh->b_data);
				ret2 = 0;
			} else {
				ret2 = 1; /* we didn't grab the inode */
			}
		}
		FUNC75(sb, group);
		ino++;		/* the inode bitmap is zero-based */
		if (!ret2)
			goto got; /* we grabbed the inode! */

		if (ino < FUNC7(sb))
			goto repeat_in_this_group;
next_group:
		if (++group == ngroups)
			group = 0;
	}
	err = -ENOSPC;
	goto out;

got:
	FUNC0(inode_bitmap_bh, "call ext4_handle_dirty_metadata");
	err = FUNC48(handle, NULL, inode_bitmap_bh);
	if (err) {
		FUNC72(sb, err);
		goto out;
	}

	FUNC0(group_desc_bh, "get_write_access");
	err = FUNC61(handle, group_desc_bh);
	if (err) {
		FUNC72(sb, err);
		goto out;
	}

	/* We may have to initialize the block bitmap if it isn't already */
	if (FUNC54(sb) &&
	    gdp->bg_flags & FUNC23(EXT4_BG_BLOCK_UNINIT)) {
		struct buffer_head *block_bitmap_bh;

		block_bitmap_bh = FUNC66(sb, group);
		if (FUNC12(block_bitmap_bh)) {
			err = FUNC13(block_bitmap_bh);
			goto out;
		}
		FUNC0(block_bitmap_bh, "get block bitmap access");
		err = FUNC61(handle, block_bitmap_bh);
		if (err) {
			FUNC21(block_bitmap_bh);
			FUNC72(sb, err);
			goto out;
		}

		FUNC0(block_bitmap_bh, "dirty block bitmap");
		err = FUNC48(handle, NULL, block_bitmap_bh);

		/* recheck and clear flag under lock if we still need to */
		FUNC62(sb, group);
		if (FUNC54(sb) &&
		    (gdp->bg_flags & FUNC23(EXT4_BG_BLOCK_UNINIT))) {
			gdp->bg_flags &= FUNC23(~EXT4_BG_BLOCK_UNINIT);
			FUNC41(sb, gdp,
				FUNC40(sb, group, gdp));
			FUNC32(sb, group, gdp,
						   block_bitmap_bh);
			FUNC47(sb, group, gdp);
		}
		FUNC75(sb, group);
		FUNC21(block_bitmap_bh);

		if (err) {
			FUNC72(sb, err);
			goto out;
		}
	}

	/* Update the relevant bg descriptor fields */
	if (FUNC54(sb)) {
		int free;
		struct ext4_group_info *grp = FUNC45(sb, group);

		FUNC27(&grp->alloc_sem); /* protect vs itable lazyinit */
		FUNC62(sb, group); /* while we modify the bg desc */
		free = FUNC7(sb) -
			FUNC59(sb, gdp);
		if (gdp->bg_flags & FUNC23(EXT4_BG_INODE_UNINIT)) {
			gdp->bg_flags &= FUNC23(~EXT4_BG_INODE_UNINIT);
			free = 0;
		}
		/*
		 * Check the relative inode number against the last used
		 * relative inode number in this group. if it is greater
		 * we need to update the bg_itable_unused count
		 */
		if (ino > free)
			FUNC60(sb, gdp,
					(FUNC7(sb) - ino));
		FUNC103(&grp->alloc_sem);
	} else {
		FUNC62(sb, group);
	}

	FUNC43(sb, gdp, FUNC42(sb, gdp) - 1);
	if (FUNC14(mode)) {
		FUNC77(sb, gdp, FUNC76(sb, gdp) + 1);
		if (sbi->s_log_groups_per_flex) {
			ext4_group_t f = FUNC38(sbi, group);

			FUNC20(&sbi->s_flex_groups[f].used_dirs);
		}
	}
	if (FUNC54(sb)) {
		FUNC58(sb, group, gdp, inode_bitmap_bh,
					   FUNC7(sb) / 8);
		FUNC47(sb, group, gdp);
	}
	FUNC75(sb, group);

	FUNC0(group_desc_bh, "call ext4_handle_dirty_metadata");
	err = FUNC48(handle, NULL, group_desc_bh);
	if (err) {
		FUNC72(sb, err);
		goto out;
	}

	FUNC94(&sbi->s_freeinodes_counter);
	if (FUNC14(mode))
		FUNC95(&sbi->s_dirs_counter);

	if (sbi->s_log_groups_per_flex) {
		flex_group = FUNC38(sbi, group);
		FUNC19(&sbi->s_flex_groups[flex_group].free_inodes);
	}

	inode->i_ino = ino + group * FUNC7(sb);
	/* This is the optimal IO size (for stat), not the fs block size */
	inode->i_blocks = 0;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC26(inode);
	ei->i_crtime = inode->i_mtime;

	FUNC92(ei->i_data, 0, sizeof(ei->i_data));
	ei->i_dir_start_lookup = 0;
	ei->i_disksize = 0;

	/* Don't inherit extent flag from directory, amongst others. */
	ei->i_flags =
		FUNC65(mode, FUNC6(dir)->i_flags & EXT4_FL_INHERITED);
	ei->i_flags |= i_flags;
	ei->i_file_acl = 0;
	ei->i_dtime = 0;
	ei->i_block_group = group;
	ei->i_last_alloc_group = ~0;

	FUNC70(inode);
	if (FUNC10(inode))
		FUNC49(handle);
	if (FUNC88(inode) < 0) {
		/*
		 * Likely a bitmap corruption causing inode to be allocated
		 * twice.
		 */
		err = -EIO;
		FUNC36(sb, "failed to insert inode %lu: doubly allocated?",
			   inode->i_ino);
		FUNC63(sb, group,
					EXT4_GROUP_INFO_IBITMAP_CORRUPT);
		goto out;
	}
	inode->i_generation = FUNC97();

	/* Precompute checksum seed for inode metadata */
	if (FUNC55(sb)) {
		__u32 csum;
		__le32 inum = FUNC24(inode->i_ino);
		__le32 gen = FUNC24(inode->i_generation);
		csum = FUNC33(sbi, sbi->s_csum_seed, (__u8 *)&inum,
				   sizeof(inum));
		ei->i_csum_seed = FUNC33(sbi, csum, (__u8 *)&gen,
					      sizeof(gen));
	}

	FUNC34(ei); /* Only relevant on 32-bit archs */
	FUNC71(inode, EXT4_STATE_NEW);

	ei->i_extra_isize = sbi->s_want_extra_isize;
	ei->i_inline_off = 0;
	if (FUNC52(sb))
		FUNC71(inode, EXT4_STATE_MAY_INLINE_DATA);
	ret = inode;
	err = FUNC28(inode);
	if (err)
		goto fail_drop;

	/*
	 * Since the encryption xattr will always be unique, create it first so
	 * that it's less likely to end up in an external xattr block and
	 * prevent its deduplication.
	 */
	if (encrypt) {
		err = FUNC83(dir, inode, handle, true);
		if (err)
			goto fail_free_drop;
	}

	if (!(ei->i_flags & EXT4_EA_INODE_FL)) {
		err = FUNC56(handle, inode, dir);
		if (err)
			goto fail_free_drop;

		err = FUNC57(handle, inode, dir, qstr);
		if (err)
			goto fail_free_drop;
	}

	if (FUNC51(sb)) {
		/* set extent flag only for directory, file and normal symlink*/
		if (FUNC14(mode) || FUNC16(mode) || FUNC15(mode)) {
			FUNC69(inode, EXT4_INODE_EXTENTS);
			FUNC37(handle, inode);
		}
	}

	if (FUNC50(handle)) {
		ei->i_sync_tid = handle->h_transaction->t_tid;
		ei->i_datasync_tid = handle->h_transaction->t_tid;
	}

	err = FUNC64(handle, inode);
	if (err) {
		FUNC72(sb, err);
		goto fail_free_drop;
	}

	FUNC35("allocating inode %lu\n", inode->i_ino);
	FUNC99(inode, dir, mode);
	FUNC21(inode_bitmap_bh);
	return ret;

fail_free_drop:
	FUNC30(inode);
fail_drop:
	FUNC22(inode);
	FUNC102(inode);
out:
	FUNC29(inode);
	inode->i_flags |= S_NOQUOTA;
	FUNC89(inode);
	FUNC21(inode_bitmap_bh);
	return FUNC4(err);
}