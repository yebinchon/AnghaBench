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
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC7 (struct fscrypt_name*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,int,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int FUNC16 (struct inode*) ; 
 struct ubifs_inode* FUNC17 (struct inode*) ; 
 int FUNC18 (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct inode*) ; 

__attribute__((used)) static int FUNC22(struct inode *dir, struct dentry *dentry)
{
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	struct inode *inode = FUNC3(dentry);
	int err, sz_change, budgeted = 1;
	struct ubifs_inode *dir_ui = FUNC17(dir);
	struct ubifs_budget_req req = { .mod_dent = 1, .dirtied_ino = 2 };
	struct fscrypt_name nm;

	/*
	 * Budget request settings: deletion direntry, deletion inode and
	 * changing the parent inode. If budgeting fails, go ahead anyway
	 * because we have extra space reserved for deletions.
	 */

	FUNC4("directory '%pd', ino %lu in dir ino %lu", dentry,
		inode->i_ino, dir->i_ino);
	FUNC14(c, FUNC10(dir));
	FUNC14(c, FUNC10(inode));
	err = FUNC16(FUNC3(dentry));
	if (err)
		return err;

	err = FUNC8(dir, &dentry->d_name, 1, &nm);
	if (err)
		return err;

	err = FUNC19(inode);
	if (err)
		return err;

	sz_change = FUNC0(FUNC6(&nm));

	err = FUNC15(c, &req);
	if (err) {
		if (err != -ENOSPC)
			goto out_fname;
		budgeted = 0;
	}

	FUNC11(dir, inode);
	inode->i_ctime = FUNC2(dir);
	FUNC1(inode);
	FUNC5(dir);
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC18(c, dir, &nm, inode, 1, 0);
	if (err)
		goto out_cancel;
	FUNC21(dir, inode);

	if (budgeted)
		FUNC20(c, &req);
	else {
		/* We've deleted something - clean the "no space" flags */
		c->bi.nospace = c->bi.nospace_rp = 0;
		FUNC13();
	}
	FUNC7(&nm);
	return 0;

out_cancel:
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC9(dir);
	FUNC12(inode, 2);
	FUNC21(dir, inode);
	if (budgeted)
		FUNC20(c, &req);
out_fname:
	FUNC7(&nm);
	return err;
}