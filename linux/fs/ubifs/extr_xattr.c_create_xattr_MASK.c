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
struct ubifs_inode {int data_len; int xattr_cnt; int xattr_names; int xattr; int ui_size; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  flags; int /*<<< orphan*/  xattr_size; int /*<<< orphan*/  data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int /*<<< orphan*/  dirtied_ino_d; int /*<<< orphan*/  new_ino_d; } ;
struct inode {int i_flags; int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/  i_ino; } ;
struct fscrypt_name {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int S_IFREG ; 
 int S_IRWXUGO ; 
 int S_NOATIME ; 
 int S_NOCMTIME ; 
 int S_SYNC ; 
 int /*<<< orphan*/  UBIFS_CRYPT_FL ; 
 int /*<<< orphan*/  UBIFS_XATTR_FL ; 
 int /*<<< orphan*/  UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT ; 
 int XATTR_LIST_MAX ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  empty_aops ; 
 int /*<<< orphan*/  empty_fops ; 
 int /*<<< orphan*/  empty_iops ; 
 int FUNC6 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC7 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,char*,int /*<<< orphan*/ ,int,...) ; 
 struct ubifs_inode* FUNC17 (struct inode*) ; 
 int FUNC18 (struct ubifs_info*,struct inode*,struct fscrypt_name const*,struct inode*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC19 (struct ubifs_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int FUNC22 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC23(struct ubifs_info *c, struct inode *host,
			const struct fscrypt_name *nm, const void *value, int size)
{
	int err, names_len;
	struct inode *inode;
	struct ubifs_inode *ui, *host_ui = FUNC17(host);
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
				.new_ino_d = FUNC0(size, 8), .dirtied_ino = 1,
				.dirtied_ino_d = FUNC0(host_ui->data_len, 8) };

	if (host_ui->xattr_cnt >= FUNC22(c)) {
		FUNC16(c, "inode %lu already has too many xattrs (%d), cannot create more",
			  host->i_ino, host_ui->xattr_cnt);
		return -ENOSPC;
	}
	/*
	 * Linux limits the maximum size of the extended attribute names list
	 * to %XATTR_LIST_MAX. This means we should not allow creating more
	 * extended attributes if the name list becomes larger. This limitation
	 * is artificial for UBIFS, though.
	 */
	names_len = host_ui->xattr_names + host_ui->xattr_cnt + FUNC6(nm) + 1;
	if (names_len > XATTR_LIST_MAX) {
		FUNC16(c, "cannot add one more xattr name to inode %lu, total names length would become %d, max. is %d",
			  host->i_ino, names_len, XATTR_LIST_MAX);
		return -ENOSPC;
	}

	err = FUNC15(c, &req);
	if (err)
		return err;

	inode = FUNC19(c, host, S_IFREG | S_IRWXUGO);
	if (FUNC3(inode)) {
		err = FUNC4(inode);
		goto out_budg;
	}

	/* Re-define all operations to be "nothing" */
	inode->i_mapping->a_ops = &empty_aops;
	inode->i_op = &empty_iops;
	inode->i_fop = &empty_fops;

	inode->i_flags |= S_SYNC | S_NOATIME | S_NOCMTIME;
	ui = FUNC17(inode);
	ui->xattr = 1;
	ui->flags |= UBIFS_XATTR_FL;
	ui->data = FUNC10(value, size, GFP_NOFS);
	if (!ui->data) {
		err = -ENOMEM;
		goto out_free;
	}
	inode->i_size = ui->ui_size = size;
	ui->data_len = size;

	FUNC12(&host_ui->ui_mutex);
	host->i_ctime = FUNC5(host);
	host_ui->xattr_cnt += 1;
	host_ui->xattr_size += FUNC1(FUNC6(nm));
	host_ui->xattr_size += FUNC2(size);
	host_ui->xattr_names += FUNC6(nm);

	/*
	 * We handle UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT here because we
	 * have to set the UBIFS_CRYPT_FL flag on the host inode.
	 * To avoid multiple updates of the same inode in the same operation,
	 * let's do it here.
	 */
	if (FUNC14(FUNC7(nm), UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT) == 0)
		host_ui->flags |= UBIFS_CRYPT_FL;

	err = FUNC18(c, host, nm, inode, 0, 1);
	if (err)
		goto out_cancel;
	FUNC21(host);
	FUNC13(&host_ui->ui_mutex);

	FUNC20(c, &req);
	FUNC8(inode);
	FUNC9(inode);
	return 0;

out_cancel:
	host_ui->xattr_cnt -= 1;
	host_ui->xattr_size -= FUNC1(FUNC6(nm));
	host_ui->xattr_size -= FUNC2(size);
	host_ui->xattr_names -= FUNC6(nm);
	host_ui->flags &= ~UBIFS_CRYPT_FL;
	FUNC13(&host_ui->ui_mutex);
out_free:
	FUNC11(inode);
	FUNC9(inode);
out_budg:
	FUNC20(c, &req);
	return err;
}