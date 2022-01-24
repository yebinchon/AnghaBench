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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_inode {size_t data_len; size_t xattr_size; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  inum; } ;
struct inode {size_t i_size; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int /*<<< orphan*/  disk_name; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ UBIFS_MAX_NLEN ; 
 int /*<<< orphan*/  UBIFS_MAX_XENT_NODE_SZ ; 
 scalar_t__ FUNC3 (struct fscrypt_name*) ; 
 struct inode* FUNC4 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,int) ; 
 struct ubifs_inode* FUNC14 (struct inode*) ; 
 int FUNC15 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct fscrypt_name*) ; 

ssize_t FUNC17(struct inode *host, const char *name, void *buf,
			size_t size)
{
	struct inode *inode;
	struct ubifs_info *c = host->i_sb->s_fs_info;
	struct fscrypt_name nm = { .disk_name = FUNC0((char *)name, FUNC12(name))};
	struct ubifs_inode *ui;
	struct ubifs_dent_node *xent;
	union ubifs_key key;
	int err;

	if (FUNC3(&nm) > UBIFS_MAX_NLEN)
		return -ENAMETOOLONG;

	xent = FUNC7(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
	if (!xent)
		return -ENOMEM;

	FUNC16(c, &key, host->i_ino, &nm);
	err = FUNC15(c, &key, xent, &nm);
	if (err) {
		if (err == -ENOENT)
			err = -ENODATA;
		goto out_unlock;
	}

	inode = FUNC4(c, FUNC8(xent->inum));
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out_unlock;
	}

	ui = FUNC14(inode);
	FUNC13(c, inode->i_size == ui->data_len);
	FUNC13(c, FUNC14(host)->xattr_size > ui->data_len);

	FUNC10(&ui->ui_mutex);
	if (buf) {
		/* If @buf is %NULL we are supposed to return the length */
		if (ui->data_len > size) {
			err = -ERANGE;
			goto out_iput;
		}

		FUNC9(buf, ui->data, ui->data_len);
	}
	err = ui->data_len;

out_iput:
	FUNC11(&ui->ui_mutex);
	FUNC5(inode);
out_unlock:
	FUNC6(xent);
	return err;
}