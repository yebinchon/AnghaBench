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
struct ubifs_inode {int data_len; int ui_size; int /*<<< orphan*/  ui_mutex; scalar_t__ data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int /*<<< orphan*/  new_ino_d; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_link; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_str {int len; scalar_t__ name; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  UBIFS_MAX_INO_DATA ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct dentry*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fscrypt_name*) ; 
 int FUNC8 (struct inode*,char const*,int,struct fscrypt_str*) ; 
 int /*<<< orphan*/  FUNC9 (struct fscrypt_name*) ; 
 int FUNC10 (struct inode*,char const*,int,int /*<<< orphan*/ ,struct fscrypt_str*) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (char const*) ; 
 int FUNC20 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int FUNC21 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 struct ubifs_inode* FUNC22 (struct inode*) ; 
 int FUNC23 (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC24 (struct ubifs_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC26(struct inode *dir, struct dentry *dentry,
			 const char *symname)
{
	struct inode *inode;
	struct ubifs_inode *ui;
	struct ubifs_inode *dir_ui = FUNC22(dir);
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	int err, sz_change, len = FUNC19(symname);
	struct fscrypt_str disk_link;
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
					.new_ino_d = FUNC0(len, 8),
					.dirtied_ino = 1 };
	struct fscrypt_name nm;

	FUNC6("dent '%pd', target '%s' in dir ino %lu", dentry,
		symname, dir->i_ino);

	err = FUNC10(dir, symname, len, UBIFS_MAX_INO_DATA,
				      &disk_link);
	if (err)
		return err;

	/*
	 * Budget request settings: new inode, new direntry and changing parent
	 * directory inode.
	 */
	err = FUNC20(c, &req);
	if (err)
		return err;

	err = FUNC11(dir, &dentry->d_name, 0, &nm);
	if (err)
		goto out_budg;

	sz_change = FUNC1(FUNC7(&nm));

	inode = FUNC24(c, dir, S_IFLNK | S_IRWXUGO);
	if (FUNC3(inode)) {
		err = FUNC4(inode);
		goto out_fname;
	}

	ui = FUNC22(inode);
	ui->data = FUNC14(disk_link.len, GFP_NOFS);
	if (!ui->data) {
		err = -ENOMEM;
		goto out_inode;
	}

	if (FUNC2(inode)) {
		disk_link.name = ui->data; /* encrypt directly into ui->data */
		err = FUNC8(inode, symname, len, &disk_link);
		if (err)
			goto out_inode;
	} else {
		FUNC16(ui->data, disk_link.name, disk_link.len);
		inode->i_link = ui->data;
	}

	/*
	 * The terminating zero byte is not written to the flash media and it
	 * is put just to make later in-memory string processing simpler. Thus,
	 * data length is @disk_link.len - 1, not @disk_link.len.
	 */
	ui->data_len = disk_link.len - 1;
	inode->i_size = FUNC22(inode)->ui_size = disk_link.len - 1;

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

	FUNC12(inode);
	FUNC5(dentry, inode);
	err = 0;
	goto out_fname;

out_cancel:
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC18(&dir_ui->ui_mutex);
out_inode:
	FUNC15(inode);
	FUNC13(inode);
out_fname:
	FUNC9(&nm);
out_budg:
	FUNC25(c, &req);
	return err;
}