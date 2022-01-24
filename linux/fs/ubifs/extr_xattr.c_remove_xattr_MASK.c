#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ubifs_inode {scalar_t__ data_len; int xattr_cnt; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  xattr_names; int /*<<< orphan*/  xattr_size; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; int mod_dent; int /*<<< orphan*/  dirtied_ino_d; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_ctime; } ;
struct fscrypt_name {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,int) ; 
 int FUNC9 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 struct ubifs_inode* FUNC10 (struct inode*) ; 
 int FUNC11 (struct ubifs_info*,struct inode*,struct inode*,struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC13(struct ubifs_info *c, struct inode *host,
			struct inode *inode, const struct fscrypt_name *nm)
{
	int err;
	struct ubifs_inode *host_ui = FUNC10(host);
	struct ubifs_inode *ui = FUNC10(inode);
	struct ubifs_budget_req req = { .dirtied_ino = 2, .mod_dent = 1,
				.dirtied_ino_d = FUNC0(host_ui->data_len, 8) };

	FUNC8(c, ui->data_len == inode->i_size);

	err = FUNC9(c, &req);
	if (err)
		return err;

	FUNC6(&host_ui->ui_mutex);
	host->i_ctime = FUNC3(host);
	host_ui->xattr_cnt -= 1;
	host_ui->xattr_size -= FUNC1(FUNC4(nm));
	host_ui->xattr_size -= FUNC2(ui->data_len);
	host_ui->xattr_names -= FUNC4(nm);

	err = FUNC11(c, host, inode, nm);
	if (err)
		goto out_cancel;
	FUNC7(&host_ui->ui_mutex);

	FUNC12(c, &req);
	return 0;

out_cancel:
	host_ui->xattr_cnt += 1;
	host_ui->xattr_size += FUNC1(FUNC4(nm));
	host_ui->xattr_size += FUNC2(ui->data_len);
	host_ui->xattr_names += FUNC4(nm);
	FUNC7(&host_ui->ui_mutex);
	FUNC12(c, &req);
	FUNC5(inode);
	return err;
}