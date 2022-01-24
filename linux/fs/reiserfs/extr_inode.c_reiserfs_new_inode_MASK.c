#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int s_flags; } ;
struct stat_data {int dummy; } ;
struct reiserfs_transaction_handle {int displace_new_blocks; scalar_t__ t_trans_id; } ;
struct reiserfs_security_handle {scalar_t__ name; } ;
struct reiserfs_iget_args {void* objectid; void* dirid; } ;
struct TYPE_9__ {scalar_t__ k_objectid; scalar_t__ k_dir_id; } ;
struct item_head {TYPE_3__ ih_key; } ;
struct inode {int /*<<< orphan*/  i_flags; struct super_block* i_sb; int /*<<< orphan*/  i_size; scalar_t__ i_bytes; scalar_t__ i_blocks; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; void* i_generation; void* i_ino; int /*<<< orphan*/  i_nlink; } ;
struct dentry {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_11__ {int i_first_direct_byte; int i_attrs; scalar_t__ new_packing_locality; int /*<<< orphan*/ * i_jl; scalar_t__ i_trans_id; scalar_t__ i_prealloc_count; scalar_t__ i_prealloc_block; scalar_t__ i_flags; int /*<<< orphan*/  i_prealloc_list; } ;
struct TYPE_10__ {TYPE_1__* s_rs; } ;
struct TYPE_8__ {scalar_t__ k_objectid; } ;
struct TYPE_7__ {scalar_t__ s_inode_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 int IO_ERROR ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int ITEM_FOUND ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  KEY_FORMAT_3_6 ; 
 int /*<<< orphan*/  KEY_SIZE ; 
 int /*<<< orphan*/  MAX_US_INT ; 
 TYPE_5__* FUNC5 (struct inode*) ; 
 int REISERFS_INHERIT_MASK ; 
 TYPE_4__* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int SB_POSIXACL ; 
 int /*<<< orphan*/  SD_OFFSET ; 
 int /*<<< orphan*/  SD_SIZE ; 
 int /*<<< orphan*/  SD_V1_SIZE ; 
 int /*<<< orphan*/  STAT_DATA_V1 ; 
 int /*<<< orphan*/  STAT_DATA_V2 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  S_PRIVATE ; 
 int /*<<< orphan*/  TYPE_STAT_DATA ; 
 int U32_MAX ; 
 int /*<<< orphan*/  FUNC10 (struct cpu_key*,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 void* event ; 
 int FUNC17 (struct inode*) ; 
 int FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct stat_data*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct stat_data*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct inode*,void*,int /*<<< orphan*/ ,struct reiserfs_iget_args*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int FUNC23 (struct reiserfs_transaction_handle*) ; 
 void* FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct item_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct super_block*) ; 
 int /*<<< orphan*/  path_to_key ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (struct inode*) ; 
 int /*<<< orphan*/  reiserfs_find_actor ; 
 int /*<<< orphan*/  FUNC32 (struct reiserfs_transaction_handle*) ; 
 int FUNC33 (struct reiserfs_transaction_handle*,struct inode*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC34 (struct inode*) ; 
 int FUNC35 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ *,struct cpu_key*,struct item_head*,struct inode*,char*) ; 
 int FUNC36 (struct reiserfs_transaction_handle*,struct inode*,struct item_head*,int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC37 (struct reiserfs_transaction_handle*,struct inode*,struct item_head*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC38 (struct super_block*) ; 
 int FUNC39 (struct reiserfs_transaction_handle*,struct inode*,struct reiserfs_security_handle*) ; 
 int /*<<< orphan*/  FUNC40 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC41 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC42 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC43 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC44 (struct super_block*) ; 
 int FUNC45 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC46 (int,struct inode*) ; 
 int FUNC47 (struct super_block*,struct cpu_key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC51 (struct inode*) ; 

int FUNC52(struct reiserfs_transaction_handle *th,
		       struct inode *dir, umode_t mode, const char *symname,
		       /* 0 for regular, EMTRY_DIR_SIZE for dirs,
		          strlen (symname) for symlinks) */
		       loff_t i_size, struct dentry *dentry,
		       struct inode *inode,
		       struct reiserfs_security_handle *security)
{
	struct super_block *sb = dir->i_sb;
	struct reiserfs_iget_args args;
	FUNC1(path_to_key);
	struct cpu_key key;
	struct item_head ih;
	struct stat_data sd;
	int retval;
	int err;
	int depth;

	FUNC0(!th->t_trans_id);

	depth = FUNC45(sb);
	err = FUNC14(inode);
	FUNC43(sb, depth);
	if (err)
		goto out_end_trans;
	if (!dir->i_nlink) {
		err = -EPERM;
		goto out_bad_inode;
	}

	/* item head of new item */
	ih.ih_key.k_dir_id = FUNC31(dir);
	ih.ih_key.k_objectid = FUNC12(FUNC32(th));
	if (!ih.ih_key.k_objectid) {
		err = -ENOMEM;
		goto out_bad_inode;
	}
	args.objectid = inode->i_ino = FUNC24(ih.ih_key.k_objectid);
	if (FUNC28(sb))
		FUNC26(&ih, NULL, KEY_FORMAT_3_5, SD_OFFSET,
				  TYPE_STAT_DATA, SD_V1_SIZE, MAX_US_INT);
	else
		FUNC26(&ih, NULL, KEY_FORMAT_3_6, SD_OFFSET,
				  TYPE_STAT_DATA, SD_SIZE, MAX_US_INT);
	FUNC27(FUNC3(inode), &ih.ih_key, KEY_SIZE);
	args.dirid = FUNC24(ih.ih_key.k_dir_id);

	depth = FUNC45(inode->i_sb);
	err = FUNC21(inode, args.objectid,
			     reiserfs_find_actor, &args);
	FUNC43(inode->i_sb, depth);
	if (err) {
		err = -EINVAL;
		goto out_bad_inode;
	}

	if (FUNC28(sb))
		/*
		 * not a perfect generation count, as object ids can be reused,
		 * but this is as good as reiserfs can do right now.
		 * note that the private part of inode isn't filled in yet,
		 * we have to use the directory.
		 */
		inode->i_generation = FUNC24(FUNC3(dir)->k_objectid);
	else
#if defined( USE_INODE_GENERATION_COUNTER )
		inode->i_generation =
		    le32_to_cpu(REISERFS_SB(sb)->s_rs->s_inode_generation);
#else
		inode->i_generation = ++event;
#endif

	/* fill stat data */
	FUNC50(inode, (FUNC8(mode) ? 2 : 1));

	/* uid and gid must already be set by the caller for quota init */

	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC13(inode);
	inode->i_size = i_size;
	inode->i_blocks = 0;
	inode->i_bytes = 0;
	FUNC5(inode)->i_first_direct_byte = FUNC9(mode) ? 1 :
	    U32_MAX /*NO_BYTES_IN_DIRECT_ITEM */ ;

	FUNC2(&FUNC5(inode)->i_prealloc_list);
	FUNC5(inode)->i_flags = 0;
	FUNC5(inode)->i_prealloc_block = 0;
	FUNC5(inode)->i_prealloc_count = 0;
	FUNC5(inode)->i_trans_id = 0;
	FUNC5(inode)->i_jl = NULL;
	FUNC5(inode)->i_attrs =
	    FUNC5(dir)->i_attrs & REISERFS_INHERIT_MASK;
	FUNC46(FUNC5(inode)->i_attrs, inode);
	FUNC34(inode);

	/* key to search for correct place for new stat data */
	FUNC10(&key, KEY_FORMAT_3_6, FUNC24(ih.ih_key.k_dir_id),
		      FUNC24(ih.ih_key.k_objectid), SD_OFFSET,
		      TYPE_STAT_DATA, 3 /*key length */ );

	/* find proper place for inserting of stat data */
	retval = FUNC47(sb, &key, &path_to_key);
	if (retval == IO_ERROR) {
		err = -EIO;
		goto out_bad_inode;
	}
	if (retval == ITEM_FOUND) {
		FUNC29(&path_to_key);
		err = -EEXIST;
		goto out_bad_inode;
	}
	if (FUNC28(sb)) {
		/* i_uid or i_gid is too big to be stored in stat data v3.5 */
		if (FUNC18(inode) & ~0xffff || FUNC17(inode) & ~0xffff) {
			FUNC29(&path_to_key);
			err = -EINVAL;
			goto out_bad_inode;
		}
		FUNC20(&sd, inode, inode->i_size);
	} else {
		FUNC19(&sd, inode, inode->i_size);
	}
	/*
	 * store in in-core inode the key of stat data and version all
	 * object items will have (directory items will have old offset
	 * format, other new objects will consist of new items)
	 */
	if (FUNC28(sb) || FUNC8(mode) || FUNC9(mode))
		FUNC48(inode, KEY_FORMAT_3_5);
	else
		FUNC48(inode, KEY_FORMAT_3_6);
	if (FUNC28(sb))
		FUNC49(inode, STAT_DATA_V1);
	else
		FUNC49(inode, STAT_DATA_V2);

	/* insert the stat data into the tree */
#ifdef DISPLACE_NEW_PACKING_LOCALITIES
	if (REISERFS_I(dir)->new_packing_locality)
		th->displace_new_blocks = 1;
#endif
	retval =
	    FUNC35(th, &path_to_key, &key, &ih, inode,
				 (char *)(&sd));
	if (retval) {
		err = retval;
		FUNC30(&path_to_key);
		goto out_bad_inode;
	}
#ifdef DISPLACE_NEW_PACKING_LOCALITIES
	if (!th->displace_new_blocks)
		REISERFS_I(dir)->new_packing_locality = 0;
#endif
	if (FUNC8(mode)) {
		/* insert item with "." and ".." */
		retval =
		    FUNC36(th, inode, &ih, &path_to_key, dir);
	}

	if (FUNC9(mode)) {
		/* insert body of symlink */
		if (!FUNC28(sb))
			i_size = FUNC7(i_size);
		retval =
		    FUNC37(th, inode, &ih, &path_to_key, symname,
					 i_size);
	}
	if (retval) {
		err = retval;
		FUNC30(&path_to_key);
		FUNC23(th);
		goto out_inserted_sd;
	}

	if (FUNC38(inode->i_sb)) {
		FUNC44(inode->i_sb);
		retval = FUNC33(th, dir, dentry, inode);
		FUNC42(inode->i_sb);
		if (retval) {
			err = retval;
			FUNC30(&path_to_key);
			FUNC23(th);
			goto out_inserted_sd;
		}
	} else if (inode->i_sb->s_flags & SB_POSIXACL) {
		FUNC41(inode->i_sb, "jdm-13090",
				 "ACLs aren't enabled in the fs, "
				 "but vfs thinks they are!");
	} else if (FUNC4(dir))
		inode->i_flags |= S_PRIVATE;

	if (security->name) {
		FUNC44(inode->i_sb);
		retval = FUNC39(th, inode, security);
		FUNC42(inode->i_sb);
		if (retval) {
			err = retval;
			FUNC30(&path_to_key);
			retval = FUNC23(th);
			if (retval)
				err = retval;
			goto out_inserted_sd;
		}
	}

	FUNC40(th, inode);
	FUNC30(&path_to_key);

	return 0;

out_bad_inode:
	/* Invalidate the object, nothing was inserted yet */
	FUNC3(inode)->k_objectid = 0;

	/* Quota change must be inside a transaction for journaling */
	depth = FUNC45(inode->i_sb);
	FUNC16(inode);
	FUNC43(inode->i_sb, depth);

out_end_trans:
	FUNC23(th);
	/*
	 * Drop can be outside and it needs more credits so it's better
	 * to have it outside
	 */
	depth = FUNC45(inode->i_sb);
	FUNC15(inode);
	FUNC43(inode->i_sb, depth);
	inode->i_flags |= S_NOQUOTA;
	FUNC25(inode);

out_inserted_sd:
	FUNC11(inode);
	th->t_trans_id = 0;	/* so the caller can't use this handle later */
	FUNC51(inode); /* OK to do even if we hadn't locked it */
	FUNC22(inode);
	return err;
}