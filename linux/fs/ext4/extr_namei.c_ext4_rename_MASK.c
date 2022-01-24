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
typedef  int /*<<< orphan*/  u8 ;
struct inode {scalar_t__ i_nlink; scalar_t__ i_ino; void* i_mtime; void* i_ctime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct ext4_renament {struct inode* bh; struct inode* dir_bh; struct inode* inode; struct inode* dir; struct dentry* dentry; TYPE_1__* de; int /*<<< orphan*/  inlined; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;
typedef  struct inode handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_projid; } ;
struct TYPE_3__ {int /*<<< orphan*/  file_type; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int EXDEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*) ; 
 int /*<<< orphan*/  EXT4_FT_CHRDEV ; 
 int /*<<< orphan*/  EXT4_HT_DIR ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 int /*<<< orphan*/  EXT4_INODE_INLINE_DATA ; 
 int /*<<< orphan*/  EXT4_INODE_PROJINHERIT ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  NO_AUTO_DA_ALLOC ; 
 int FUNC6 (struct inode*) ; 
 unsigned int RENAME_WHITEOUT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 void* FUNC10 (struct inode*) ; 
 struct inode* FUNC11 (struct dentry*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 void* FUNC18 (struct inode*,int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,struct inode*) ; 
 struct inode* FUNC21 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,struct ext4_renament*,int) ; 
 int FUNC26 (struct inode*,struct ext4_renament*,scalar_t__) ; 
 int FUNC27 (struct inode*,struct ext4_renament*) ; 
 int FUNC28 (struct inode*,struct ext4_renament*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 struct inode* FUNC31 (struct ext4_renament*,int,struct inode**) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*) ; 

__attribute__((used)) static int FUNC37(struct inode *old_dir, struct dentry *old_dentry,
		       struct inode *new_dir, struct dentry *new_dentry,
		       unsigned int flags)
{
	handle_t *handle = NULL;
	struct ext4_renament old = {
		.dir = old_dir,
		.dentry = old_dentry,
		.inode = FUNC11(old_dentry),
	};
	struct ext4_renament new = {
		.dir = new_dir,
		.dentry = new_dentry,
		.inode = FUNC11(new_dentry),
	};
	int force_reread;
	int retval;
	struct inode *whiteout = NULL;
	int credits;
	u8 old_file_type;

	if (new.inode && new.inode->i_nlink == 0) {
		FUNC2(new.inode,
				 "target of rename is already freed");
		return -EFSCORRUPTED;
	}

	if ((FUNC29(new_dir, EXT4_INODE_PROJINHERIT)) &&
	    (!FUNC34(FUNC3(new_dir)->i_projid,
			FUNC3(old_dentry->d_inode)->i_projid)))
		return -EXDEV;

	retval = FUNC12(old.dir);
	if (retval)
		return retval;
	retval = FUNC12(new.dir);
	if (retval)
		return retval;

	/* Initialize quotas before so that eventual writes go
	 * in separate transaction */
	if (new.inode) {
		retval = FUNC12(new.inode);
		if (retval)
			return retval;
	}

	old.bh = FUNC18(old.dir, &old.dentry->d_name, &old.de, NULL);
	if (FUNC5(old.bh))
		return FUNC6(old.bh);
	/*
	 *  Check for inode number is _not_ due to possible IO errors.
	 *  We might rmdir the source, keep it as pwd of some process
	 *  and merrily kill the link to whatever was created under the
	 *  same name. Goodbye sticky bit ;-<
	 */
	retval = -ENOENT;
	if (!old.bh || FUNC33(old.de->inode) != old.inode->i_ino)
		goto end_rename;

	new.bh = FUNC18(new.dir, &new.dentry->d_name,
				 &new.de, &new.inlined);
	if (FUNC5(new.bh)) {
		retval = FUNC6(new.bh);
		new.bh = NULL;
		goto end_rename;
	}
	if (new.bh) {
		if (!new.inode) {
			FUNC8(new.bh);
			new.bh = NULL;
		}
	}
	if (new.inode && !FUNC35(new.dir->i_sb, NO_AUTO_DA_ALLOC))
		FUNC15(old.inode);

	credits = (2 * FUNC0(old.dir->i_sb) +
		   EXT4_INDEX_EXTRA_TRANS_BLOCKS + 2);
	if (!(flags & RENAME_WHITEOUT)) {
		handle = FUNC21(old.dir, EXT4_HT_DIR, credits);
		if (FUNC5(handle)) {
			retval = FUNC6(handle);
			handle = NULL;
			goto end_rename;
		}
	} else {
		whiteout = FUNC31(&old, credits, &handle);
		if (FUNC5(whiteout)) {
			retval = FUNC6(whiteout);
			whiteout = NULL;
			goto end_rename;
		}
	}

	if (FUNC4(old.dir) || FUNC4(new.dir))
		FUNC19(handle);

	if (FUNC7(old.inode->i_mode)) {
		if (new.inode) {
			retval = -ENOTEMPTY;
			if (!FUNC17(new.inode))
				goto end_rename;
		} else {
			retval = -EMLINK;
			if (new.dir != old.dir && FUNC1(new.dir))
				goto end_rename;
		}
		retval = FUNC27(handle, &old);
		if (retval)
			goto end_rename;
	}
	/*
	 * If we're renaming a file within an inline_data dir and adding or
	 * setting the new dirent causes a conversion from inline_data to
	 * extents/blockmap, we need to force the dirent delete code to
	 * re-read the directory, or else we end up trying to delete a dirent
	 * from what is now the extent tree root (or a block map).
	 */
	force_reread = (new.dir->i_ino == old.dir->i_ino &&
			FUNC29(new.dir, EXT4_INODE_INLINE_DATA));

	old_file_type = old.de->file_type;
	if (whiteout) {
		/*
		 * Do this before adding a new entry, so the old entry is sure
		 * to be still pointing to the valid old entry.
		 */
		retval = FUNC28(handle, &old, whiteout->i_ino,
				     EXT4_FT_CHRDEV);
		if (retval)
			goto end_rename;
		FUNC23(handle, whiteout);
	}
	if (!new.bh) {
		retval = FUNC14(handle, new.dentry, old.inode);
		if (retval)
			goto end_rename;
	} else {
		retval = FUNC28(handle, &new,
				     old.inode->i_ino, old_file_type);
		if (retval)
			goto end_rename;
	}
	if (force_reread)
		force_reread = !FUNC29(new.dir,
						     EXT4_INODE_INLINE_DATA);

	/*
	 * Like most other Unix systems, set the ctime for inodes on a
	 * rename.
	 */
	old.inode->i_ctime = FUNC10(old.inode);
	FUNC23(handle, old.inode);

	if (!whiteout) {
		/*
		 * ok, that's it
		 */
		FUNC25(handle, &old, force_reread);
	}

	if (new.inode) {
		FUNC16(handle, new.inode);
		new.inode->i_ctime = FUNC10(new.inode);
	}
	old.dir->i_ctime = old.dir->i_mtime = FUNC10(old.dir);
	FUNC30(old.dir);
	if (old.dir_bh) {
		retval = FUNC26(handle, &old, new.dir->i_ino);
		if (retval)
			goto end_rename;

		FUNC16(handle, old.dir);
		if (new.inode) {
			/* checked ext4_empty_dir above, can't have another
			 * parent, ext4_dec_count() won't work for many-linked
			 * dirs */
			FUNC9(new.inode);
		} else {
			FUNC20(handle, new.dir);
			FUNC30(new.dir);
			FUNC23(handle, new.dir);
		}
	}
	FUNC23(handle, old.dir);
	if (new.inode) {
		FUNC23(handle, new.inode);
		if (!new.inode->i_nlink)
			FUNC24(handle, new.inode);
	}
	retval = 0;

end_rename:
	FUNC8(old.dir_bh);
	FUNC8(old.bh);
	FUNC8(new.bh);
	if (whiteout) {
		if (retval)
			FUNC13(whiteout);
		FUNC36(whiteout);
		FUNC32(whiteout);
	}
	if (handle)
		FUNC22(handle);
	return retval;
}