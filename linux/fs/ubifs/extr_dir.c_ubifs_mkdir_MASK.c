#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct ubifs_inode {int ui_size; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC7 (struct fscrypt_name*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,char*,int) ; 
 int FUNC17 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 struct ubifs_inode* FUNC18 (struct inode*) ; 
 int FUNC19 (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC20 (struct ubifs_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC22(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct inode *inode;
	struct ubifs_inode *dir_ui = FUNC18(dir);
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	int err, sz_change;
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1 };
	struct fscrypt_name nm;

	/*
	 * Budget request settings: new inode, new direntry and changing parent
	 * directory inode.
	 */

	FUNC4("dent '%pd', mode %#hx in dir ino %lu",
		dentry, mode, dir->i_ino);

	err = FUNC15(c, &req);
	if (err)
		return err;

	err = FUNC8(dir, &dentry->d_name, 0, &nm);
	if (err)
		goto out_budg;

	sz_change = FUNC0(FUNC6(&nm));

	inode = FUNC20(c, dir, S_IFDIR | mode);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out_fname;
	}

	err = FUNC17(dir, inode, &dentry->d_name);
	if (err)
		goto out_inode;

	FUNC13(&dir_ui->ui_mutex);
	FUNC10(inode);
	FUNC9(inode);
	FUNC9(dir);
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC19(c, dir, &nm, inode, 0, 0);
	if (err) {
		FUNC16(c, "cannot create directory, error %d", err);
		goto out_cancel;
	}
	FUNC14(&dir_ui->ui_mutex);

	FUNC21(c, &req);
	FUNC3(dentry, inode);
	FUNC7(&nm);
	return 0;

out_cancel:
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC5(dir);
	FUNC14(&dir_ui->ui_mutex);
out_inode:
	FUNC12(inode);
	FUNC11(inode);
out_fname:
	FUNC7(&nm);
out_budg:
	FUNC21(c, &req);
	return err;
}