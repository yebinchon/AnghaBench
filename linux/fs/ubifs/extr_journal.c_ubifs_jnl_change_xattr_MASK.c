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
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_wbuf {int dummy; } ;
struct ubifs_inode {int data_len; int /*<<< orphan*/  ui_lock; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  synced_i_size; int /*<<< orphan*/  ui_mutex; } ;
typedef  void ubifs_ino_node ;
struct ubifs_info {TYPE_1__* jheads; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 size_t BASEHD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC1 (struct inode const*) ; 
 int UBIFS_HASH_ARR_SZ ; 
 int UBIFS_INO_NODE_SZ ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ubifs_info*,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,struct ubifs_inode*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,void*,struct inode const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC16 (struct ubifs_info*) ; 
 struct ubifs_inode* FUNC17 (struct inode const*) ; 
 int FUNC18 (struct ubifs_info*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_info*,int) ; 
 int FUNC20 (struct ubifs_info*,union ubifs_key*,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct ubifs_wbuf*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct ubifs_info*,size_t,void*,int,int*,int*,int /*<<< orphan*/ ) ; 

int FUNC23(struct ubifs_info *c, const struct inode *inode,
			   const struct inode *host)
{
	int err, len1, len2, aligned_len, aligned_len1, lnum, offs;
	struct ubifs_inode *host_ui = FUNC17(host);
	struct ubifs_ino_node *ino;
	union ubifs_key key;
	int sync = FUNC1(host);
	u8 hash_host[UBIFS_HASH_ARR_SZ];
	u8 hash[UBIFS_HASH_ARR_SZ];

	FUNC2("ino %lu, ino %lu", host->i_ino, inode->i_ino);
	FUNC15(c, host->i_nlink > 0);
	FUNC15(c, inode->i_nlink > 0);
	FUNC15(c, FUNC9(&host_ui->ui_mutex));

	len1 = UBIFS_INO_NODE_SZ + host_ui->data_len;
	len2 = UBIFS_INO_NODE_SZ + FUNC17(inode)->data_len;
	aligned_len1 = FUNC0(len1, 8);
	aligned_len = aligned_len1 + FUNC0(len2, 8);

	aligned_len += FUNC16(c);

	ino = FUNC6(aligned_len, GFP_NOFS);
	if (!ino)
		return -ENOMEM;

	/* Make reservation before allocating sequence numbers */
	err = FUNC7(c, BASEHD, aligned_len);
	if (err)
		goto out_free;

	FUNC10(c, ino, host, 0);
	err = FUNC18(c, ino, hash_host);
	if (err)
		goto out_release;
	FUNC10(c, (void *)ino + aligned_len1, inode, 1);
	err = FUNC18(c, (void *)ino + aligned_len1, hash);
	if (err)
		goto out_release;

	err = FUNC22(c, BASEHD, ino, aligned_len, &lnum, &offs, 0);
	if (!sync && !err) {
		struct ubifs_wbuf *wbuf = &c->jheads[BASEHD].wbuf;

		FUNC21(wbuf, host->i_ino);
		FUNC21(wbuf, inode->i_ino);
	}
	FUNC11(c, BASEHD);
	if (err)
		goto out_ro;

	FUNC14(c, lnum);

	FUNC4(c, &key, host->i_ino);
	err = FUNC20(c, &key, lnum, offs, len1, hash_host);
	if (err)
		goto out_ro;

	FUNC4(c, &key, inode->i_ino);
	err = FUNC20(c, &key, lnum, offs + aligned_len1, len2, hash);
	if (err)
		goto out_ro;

	FUNC3(c);
	FUNC12(&host_ui->ui_lock);
	host_ui->synced_i_size = host_ui->ui_size;
	FUNC13(&host_ui->ui_lock);
	FUNC8(c, host_ui);
	FUNC5(ino);
	return 0;

out_release:
	FUNC11(c, BASEHD);
out_ro:
	FUNC19(c, err);
	FUNC3(c);
out_free:
	FUNC5(ino);
	return err;
}