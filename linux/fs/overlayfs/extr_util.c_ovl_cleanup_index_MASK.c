#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qstr {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_sb; struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,struct dentry*) ; 
 int FUNC10 (struct dentry*,struct inode*,struct dentry*) ; 
 struct dentry* FUNC11 (struct dentry*) ; 
 struct dentry* FUNC12 (struct dentry*) ; 
 int FUNC13 (struct dentry*,struct qstr*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC17 (char*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,struct dentry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int) ; 

__attribute__((used)) static void FUNC20(struct dentry *dentry)
{
	struct dentry *indexdir = FUNC15(dentry->d_sb);
	struct inode *dir = indexdir->d_inode;
	struct dentry *lowerdentry = FUNC11(dentry);
	struct dentry *upperdentry = FUNC12(dentry);
	struct dentry *index = NULL;
	struct inode *inode;
	struct qstr name = { };
	int err;

	err = FUNC13(lowerdentry, &name);
	if (err)
		goto fail;

	inode = FUNC3(upperdentry);
	if (!FUNC2(inode->i_mode) && inode->i_nlink != 1) {
		FUNC18("overlayfs: cleanup linked index (%pd2, ino=%lu, nlink=%u)\n",
				    upperdentry, inode->i_ino, inode->i_nlink);
		/*
		 * We either have a bug with persistent union nlink or a lower
		 * hardlink was added while overlay is mounted. Adding a lower
		 * hardlink and then unlinking all overlay hardlinks would drop
		 * overlay nlink to zero before all upper inodes are unlinked.
		 * As a safety measure, when that situation is detected, set
		 * the overlay nlink to the index inode nlink minus one for the
		 * index entry itself.
		 */
		FUNC19(FUNC3(dentry), inode->i_nlink - 1);
		FUNC16(dentry);
		goto out;
	}

	FUNC5(dir, I_MUTEX_PARENT);
	index = FUNC8(name.name, indexdir, name.len);
	err = FUNC1(index);
	if (FUNC0(index)) {
		index = NULL;
	} else if (FUNC14(dentry->d_sb)) {
		/* Whiteout orphan index to block future open by handle */
		err = FUNC10(indexdir, dir, index);
	} else {
		/* Cleanup orphan index entries */
		err = FUNC9(dir, index);
	}

	FUNC6(dir);
	if (err)
		goto fail;

out:
	FUNC7(name.name);
	FUNC4(index);
	return;

fail:
	FUNC17("overlayfs: cleanup index of '%pd2' failed (%i)\n", dentry, err);
	goto out;
}