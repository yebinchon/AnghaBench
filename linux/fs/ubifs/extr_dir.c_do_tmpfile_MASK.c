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
struct ubifs_inode {int dirty; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; } ;
struct inode {int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  WHITEOUT_DEV ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscrypt_name*) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int) ; 
 int FUNC15 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,char*,int) ; 
 int /*<<< orphan*/  ubifs_file_inode_operations ; 
 int FUNC17 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 struct ubifs_inode* FUNC18 (struct inode*) ; 
 int FUNC19 (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC20 (struct ubifs_info*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC22(struct inode *dir, struct dentry *dentry,
		      umode_t mode, struct inode **whiteout)
{
	struct inode *inode;
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1};
	struct ubifs_budget_req ino_req = { .dirtied_ino = 1 };
	struct ubifs_inode *ui, *dir_ui = FUNC18(dir);
	int err, instantiated = 0;
	struct fscrypt_name nm;

	/*
	 * Budget request settings: new dirty inode, new direntry,
	 * budget for dirtied inode will be released via writeback.
	 */

	FUNC3("dent '%pd', mode %#hx in dir ino %lu",
		dentry, mode, dir->i_ino);

	err = FUNC6(dir, &dentry->d_name, 0, &nm);
	if (err)
		return err;

	err = FUNC15(c, &req);
	if (err) {
		FUNC5(&nm);
		return err;
	}

	err = FUNC15(c, &ino_req);
	if (err) {
		FUNC21(c, &req);
		FUNC5(&nm);
		return err;
	}

	inode = FUNC20(c, dir, mode);
	if (FUNC0(inode)) {
		err = FUNC1(inode);
		goto out_budg;
	}
	ui = FUNC18(inode);

	if (whiteout) {
		FUNC7(inode, inode->i_mode, WHITEOUT_DEV);
		FUNC14(c, inode->i_op == &ubifs_file_inode_operations);
	}

	err = FUNC17(dir, inode, &dentry->d_name);
	if (err)
		goto out_inode;

	FUNC12(&ui->ui_mutex);
	FUNC8(inode);

	if (whiteout) {
		FUNC11(inode);
		FUNC4(inode);
		*whiteout = inode;
	} else {
		FUNC2(dentry, inode);
	}
	FUNC14(c, ui->dirty);

	instantiated = 1;
	FUNC13(&ui->ui_mutex);

	FUNC12(&dir_ui->ui_mutex);
	err = FUNC19(c, dir, &nm, inode, 1, 0);
	if (err)
		goto out_cancel;
	FUNC13(&dir_ui->ui_mutex);

	FUNC21(c, &req);

	return 0;

out_cancel:
	FUNC13(&dir_ui->ui_mutex);
out_inode:
	FUNC10(inode);
	if (!instantiated)
		FUNC9(inode);
out_budg:
	FUNC21(c, &req);
	if (!instantiated)
		FUNC21(c, &ino_req);
	FUNC5(&nm);
	FUNC16(c, "cannot create temporary file, error %d", err);
	return err;
}