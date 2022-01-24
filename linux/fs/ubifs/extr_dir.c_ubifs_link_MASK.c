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
struct ubifs_inode {int ui_size; int /*<<< orphan*/  data_len; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_dent; int dirtied_ino; int /*<<< orphan*/  dirtied_ino_d; } ;
struct inode {scalar_t__ i_nlink; int i_size; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct ubifs_info*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct dentry*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct fscrypt_name*) ; 
 int FUNC9 (struct dentry*,struct inode*,struct dentry*) ; 
 int FUNC10 (struct inode*,TYPE_2__*,int /*<<< orphan*/ ,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC20 (struct inode*) ; 
 int FUNC21 (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,struct inode*) ; 

__attribute__((used)) static int FUNC24(struct dentry *old_dentry, struct inode *dir,
		      struct dentry *dentry)
{
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	struct inode *inode = FUNC3(old_dentry);
	struct ubifs_inode *ui = FUNC20(inode);
	struct ubifs_inode *dir_ui = FUNC20(dir);
	int err, sz_change = FUNC1(dentry->d_name.len);
	struct ubifs_budget_req req = { .new_dent = 1, .dirtied_ino = 2,
				.dirtied_ino_d = FUNC0(ui->data_len, 8) };
	struct fscrypt_name nm;

	/*
	 * Budget request settings: new direntry, changing the target inode,
	 * changing the parent inode.
	 */

	FUNC6("dent '%pd' to ino %lu (nlink %d) in dir ino %lu",
		dentry, inode->i_ino,
		inode->i_nlink, dir->i_ino);
	FUNC17(c, FUNC13(dir));
	FUNC17(c, FUNC13(inode));

	err = FUNC9(old_dentry, dir, dentry);
	if (err)
		return err;

	err = FUNC10(dir, &dentry->d_name, 0, &nm);
	if (err)
		return err;

	err = FUNC5(c, inode);
	if (err)
		goto out_fname;

	err = FUNC18(c, &req);
	if (err)
		goto out_fname;

	FUNC15(dir, inode);

	/* Handle O_TMPFILE corner case, it is allowed to link a O_TMPFILE. */
	if (inode->i_nlink == 0)
		FUNC19(c, inode->i_ino);

	FUNC12(inode);
	FUNC11(inode);
	inode->i_ctime = FUNC2(inode);
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC21(c, dir, &nm, inode, 0, 0);
	if (err)
		goto out_cancel;
	FUNC23(dir, inode);

	FUNC22(c, &req);
	FUNC4(dentry, inode);
	FUNC8(&nm);
	return 0;

out_cancel:
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC7(inode);
	if (inode->i_nlink == 0)
		FUNC16(c, inode->i_ino);
	FUNC23(dir, inode);
	FUNC22(c, &req);
	FUNC14(inode);
out_fname:
	FUNC8(&nm);
	return err;
}