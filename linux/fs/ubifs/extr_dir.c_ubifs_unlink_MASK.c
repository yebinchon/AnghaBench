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
struct ubifs_inode {int ui_size; } ;
struct TYPE_4__ {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_info {TYPE_2__ bi; } ;
struct ubifs_budget_req {int mod_dent; int dirtied_ino; } ;
struct inode {unsigned int i_nlink; int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int FUNC3 (struct ubifs_info*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC7 (struct fscrypt_name*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,int,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 struct ubifs_inode* FUNC15 (struct inode*) ; 
 int FUNC16 (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,struct inode*) ; 

__attribute__((used)) static int FUNC20(struct inode *dir, struct dentry *dentry)
{
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	struct inode *inode = FUNC2(dentry);
	struct ubifs_inode *dir_ui = FUNC15(dir);
	int err, sz_change, budgeted = 1;
	struct ubifs_budget_req req = { .mod_dent = 1, .dirtied_ino = 2 };
	unsigned int saved_nlink = inode->i_nlink;
	struct fscrypt_name nm;

	/*
	 * Budget request settings: deletion direntry, deletion inode (+1 for
	 * @dirtied_ino), changing the parent directory inode. If budgeting
	 * fails, go ahead anyway because we have extra space reserved for
	 * deletions.
	 */

	FUNC4("dent '%pd' from ino %lu (nlink %d) in dir ino %lu",
		dentry, inode->i_ino,
		inode->i_nlink, dir->i_ino);

	err = FUNC8(dir, &dentry->d_name, 1, &nm);
	if (err)
		return err;

	err = FUNC17(inode);
	if (err)
		return err;

	sz_change = FUNC0(FUNC6(&nm));

	FUNC13(c, FUNC9(dir));
	FUNC13(c, FUNC9(inode));
	err = FUNC3(c, inode);
	if (err)
		goto out_fname;

	err = FUNC14(c, &req);
	if (err) {
		if (err != -ENOSPC)
			goto out_fname;
		budgeted = 0;
	}

	FUNC10(dir, inode);
	inode->i_ctime = FUNC1(dir);
	FUNC5(inode);
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC16(c, dir, &nm, inode, 1, 0);
	if (err)
		goto out_cancel;
	FUNC19(dir, inode);

	if (budgeted)
		FUNC18(c, &req);
	else {
		/* We've deleted something - clean the "no space" flags */
		c->bi.nospace = c->bi.nospace_rp = 0;
		FUNC12();
	}
	FUNC7(&nm);
	return 0;

out_cancel:
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC11(inode, saved_nlink);
	FUNC19(dir, inode);
	if (budgeted)
		FUNC18(c, &req);
out_fname:
	FUNC7(&nm);
	return err;
}