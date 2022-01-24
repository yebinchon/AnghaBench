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
typedef  union ubifs_dev_desc {int dummy; } ubifs_dev_desc ;
typedef  int /*<<< orphan*/  umode_t ;
struct ubifs_inode {int ui_size; int data_len; int /*<<< orphan*/  ui_mutex; union ubifs_dev_desc* data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int /*<<< orphan*/  new_ino_d; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC9 (struct fscrypt_name*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (union ubifs_dev_desc*) ; 
 union ubifs_dev_desc* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int FUNC20 (union ubifs_dev_desc*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 struct ubifs_inode* FUNC22 (struct inode*) ; 
 int FUNC23 (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC24 (struct ubifs_info*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC26(struct inode *dir, struct dentry *dentry,
		       umode_t mode, dev_t rdev)
{
	struct inode *inode;
	struct ubifs_inode *ui;
	struct ubifs_inode *dir_ui = FUNC22(dir);
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	union ubifs_dev_desc *dev = NULL;
	int sz_change;
	int err, devlen = 0;
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
					.dirtied_ino = 1 };
	struct fscrypt_name nm;

	/*
	 * Budget request settings: new inode, new direntry and changing parent
	 * directory inode.
	 */

	FUNC7("dent '%pd' in dir ino %lu", dentry, dir->i_ino);

	if (FUNC4(mode) || FUNC5(mode)) {
		dev = FUNC15(sizeof(union ubifs_dev_desc), GFP_NOFS);
		if (!dev)
			return -ENOMEM;
		devlen = FUNC20(dev, rdev);
	}

	req.new_ino_d = FUNC0(devlen, 8);
	err = FUNC19(c, &req);
	if (err) {
		FUNC14(dev);
		return err;
	}

	err = FUNC10(dir, &dentry->d_name, 0, &nm);
	if (err) {
		FUNC14(dev);
		goto out_budg;
	}

	sz_change = FUNC1(FUNC8(&nm));

	inode = FUNC24(c, dir, mode);
	if (FUNC2(inode)) {
		FUNC14(dev);
		err = FUNC3(inode);
		goto out_fname;
	}

	FUNC11(inode, inode->i_mode, rdev);
	inode->i_size = FUNC22(inode)->ui_size = devlen;
	ui = FUNC22(inode);
	ui->data = dev;
	ui->data_len = devlen;

	err = FUNC21(dir, inode, &dentry->d_name);
	if (err)
		goto out_inode;

	FUNC17(&dir_ui->ui_mutex);
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC23(c, dir, &nm, inode, 0, 0);
	if (err)
		goto out_cancel;
	FUNC18(&dir_ui->ui_mutex);

	FUNC25(c, &req);
	FUNC12(inode);
	FUNC6(dentry, inode);
	FUNC9(&nm);
	return 0;

out_cancel:
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC18(&dir_ui->ui_mutex);
out_inode:
	FUNC16(inode);
	FUNC13(inode);
out_fname:
	FUNC9(&nm);
out_budg:
	FUNC25(c, &req);
	return err;
}