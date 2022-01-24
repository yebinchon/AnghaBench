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
typedef  int /*<<< orphan*/  umode_t ;
struct ubifs_inode {int ui_size; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC6 (struct fscrypt_name*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,char*,int) ; 
 int FUNC15 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 struct ubifs_inode* FUNC16 (struct inode*) ; 
 int FUNC17 (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC18 (struct ubifs_info*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC20(struct inode *dir, struct dentry *dentry, umode_t mode,
			bool excl)
{
	struct inode *inode;
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
					.dirtied_ino = 1 };
	struct ubifs_inode *dir_ui = FUNC16(dir);
	struct fscrypt_name nm;
	int err, sz_change;

	/*
	 * Budget request settings: new inode, new direntry, changing the
	 * parent directory inode.
	 */

	FUNC4("dent '%pd', mode %#hx in dir ino %lu",
		dentry, mode, dir->i_ino);

	err = FUNC13(c, &req);
	if (err)
		return err;

	err = FUNC7(dir, &dentry->d_name, 0, &nm);
	if (err)
		goto out_budg;

	sz_change = FUNC0(FUNC5(&nm));

	inode = FUNC18(c, dir, mode);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out_fname;
	}

	err = FUNC15(dir, inode, &dentry->d_name);
	if (err)
		goto out_inode;

	FUNC11(&dir_ui->ui_mutex);
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC17(c, dir, &nm, inode, 0, 0);
	if (err)
		goto out_cancel;
	FUNC12(&dir_ui->ui_mutex);

	FUNC19(c, &req);
	FUNC6(&nm);
	FUNC8(inode);
	FUNC3(dentry, inode);
	return 0;

out_cancel:
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC12(&dir_ui->ui_mutex);
out_inode:
	FUNC10(inode);
	FUNC9(inode);
out_fname:
	FUNC6(&nm);
out_budg:
	FUNC19(c, &req);
	FUNC14(c, "cannot create regular file, error %d", err);
	return err;
}