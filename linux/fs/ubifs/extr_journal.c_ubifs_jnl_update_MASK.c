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
typedef  union ubifs_key {int dummy; } ubifs_key ;
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_wbuf {int dummy; } ;
struct ubifs_inode {int data_len; int /*<<< orphan*/  ui_lock; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  synced_i_size; int /*<<< orphan*/  del_cmtno; int /*<<< orphan*/  ui_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_ino_node {char* name; int /*<<< orphan*/  nlen; int /*<<< orphan*/  type; int /*<<< orphan*/  inum; int /*<<< orphan*/  key; TYPE_1__ ch; } ;
struct ubifs_info {TYPE_2__* jheads; int /*<<< orphan*/  cmt_no; } ;
struct ubifs_dent_node {char* name; int /*<<< orphan*/  nlen; int /*<<< orphan*/  type; int /*<<< orphan*/  inum; int /*<<< orphan*/  key; TYPE_1__ ch; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct fscrypt_name {int /*<<< orphan*/  minor_hash; int /*<<< orphan*/  hash; } ;
struct TYPE_4__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 size_t BASEHD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC1 (struct inode const*) ; 
 int FUNC2 (struct inode const*) ; 
 int /*<<< orphan*/  UBIFS_DENT_NODE ; 
 int UBIFS_DENT_NODE_SZ ; 
 int UBIFS_HASH_ARR_SZ ; 
 int UBIFS_INO_NODE_SZ ; 
 int /*<<< orphan*/  UBIFS_XENT_NODE ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 
 size_t FUNC8 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC9 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_ino_node*) ; 
 struct ubifs_ino_node* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ubifs_info*,size_t,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,struct ubifs_inode*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_info*,struct ubifs_ino_node*,struct inode const*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ubifs_info*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (struct ubifs_info*,struct ubifs_ino_node*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct ubifs_info*,int) ; 
 int FUNC25 (struct ubifs_info*,int,int) ; 
 int FUNC26 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct ubifs_info*) ; 
 scalar_t__ FUNC29 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC30 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC31 (struct inode const*) ; 
 int FUNC32 (struct ubifs_info*,struct ubifs_ino_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (struct ubifs_info*,struct ubifs_ino_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct ubifs_info*,int) ; 
 int FUNC35 (struct ubifs_info*,union ubifs_key*,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC36 (struct ubifs_info*,union ubifs_key*,int,int,int,int /*<<< orphan*/ *,struct fscrypt_name const*) ; 
 int FUNC37 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int FUNC38 (struct ubifs_info*,union ubifs_key*,struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC39 (struct ubifs_wbuf*,int /*<<< orphan*/ ) ; 
 int FUNC40 (struct ubifs_info*,size_t,struct ubifs_ino_node*,int,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC41 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC42 (struct ubifs_ino_node*) ; 

int FUNC43(struct ubifs_info *c, const struct inode *dir,
		     const struct fscrypt_name *nm, const struct inode *inode,
		     int deletion, int xent)
{
	int err, dlen, ilen, len, lnum, ino_offs, dent_offs;
	int aligned_dlen, aligned_ilen, sync = FUNC1(dir);
	int last_reference = !!(deletion && inode->i_nlink == 0);
	struct ubifs_inode *ui = FUNC31(inode);
	struct ubifs_inode *host_ui = FUNC31(dir);
	struct ubifs_dent_node *dent;
	struct ubifs_ino_node *ino;
	union ubifs_key dent_key, ino_key;
	u8 hash_dent[UBIFS_HASH_ARR_SZ];
	u8 hash_ino[UBIFS_HASH_ARR_SZ];
	u8 hash_ino_host[UBIFS_HASH_ARR_SZ];

	FUNC27(c, FUNC18(&host_ui->ui_mutex));

	dlen = UBIFS_DENT_NODE_SZ + FUNC8(nm) + 1;
	ilen = UBIFS_INO_NODE_SZ;

	/*
	 * If the last reference to the inode is being deleted, then there is
	 * no need to attach and write inode data, it is being deleted anyway.
	 * And if the inode is being deleted, no need to synchronize
	 * write-buffer even if the inode is synchronous.
	 */
	if (!last_reference) {
		ilen += ui->data_len;
		sync |= FUNC2(inode);
	}

	aligned_dlen = FUNC0(dlen, 8);
	aligned_ilen = FUNC0(ilen, 8);

	len = aligned_dlen + aligned_ilen + UBIFS_INO_NODE_SZ;
	/* Make sure to also account for extended attributes */
	if (FUNC29(c))
		len += FUNC0(host_ui->data_len, 8) + FUNC28(c);
	else
		len += host_ui->data_len;

	dent = FUNC14(len, GFP_NOFS);
	if (!dent)
		return -ENOMEM;

	/* Make reservation before allocating sequence numbers */
	err = FUNC15(c, BASEHD, len);
	if (err)
		goto out_free;

	if (!xent) {
		dent->ch.node_type = UBIFS_DENT_NODE;
		if (nm->hash)
			FUNC6(c, &dent_key, dir->i_ino, nm->hash);
		else
			FUNC5(c, &dent_key, dir->i_ino, nm);
	} else {
		dent->ch.node_type = UBIFS_XENT_NODE;
		FUNC41(c, &dent_key, dir->i_ino, nm);
	}

	FUNC12(c, &dent_key, dent->key);
	dent->inum = deletion ? 0 : FUNC4(inode->i_ino);
	dent->type = FUNC10(inode->i_mode);
	dent->nlen = FUNC3(FUNC8(nm));
	FUNC17(dent->name, FUNC9(nm), FUNC8(nm));
	dent->name[FUNC8(nm)] = '\0';
	FUNC21(c, dent);

	FUNC42(dent);
	FUNC33(c, dent, dlen, 0);
	err = FUNC32(c, dent, hash_dent);
	if (err)
		goto out_release;

	ino = (void *)dent + aligned_dlen;
	FUNC19(c, ino, inode, 0);
	err = FUNC32(c, ino, hash_ino);
	if (err)
		goto out_release;

	ino = (void *)ino + aligned_ilen;
	FUNC19(c, ino, dir, 1);
	err = FUNC32(c, ino, hash_ino_host);
	if (err)
		goto out_release;

	if (last_reference) {
		err = FUNC26(c, inode->i_ino);
		if (err) {
			FUNC20(c, BASEHD);
			goto out_finish;
		}
		ui->del_cmtno = c->cmt_no;
	}

	err = FUNC40(c, BASEHD, dent, len, &lnum, &dent_offs, sync);
	if (err)
		goto out_release;
	if (!sync) {
		struct ubifs_wbuf *wbuf = &c->jheads[BASEHD].wbuf;

		FUNC39(wbuf, inode->i_ino);
		FUNC39(wbuf, dir->i_ino);
	}
	FUNC20(c, BASEHD);
	FUNC13(dent);
	FUNC24(c, lnum);

	if (deletion) {
		if (nm->hash)
			err = FUNC37(c, &dent_key, nm->minor_hash);
		else
			err = FUNC38(c, &dent_key, nm);
		if (err)
			goto out_ro;
		err = FUNC25(c, lnum, dlen);
	} else
		err = FUNC36(c, &dent_key, lnum, dent_offs, dlen,
				       hash_dent, nm);
	if (err)
		goto out_ro;

	/*
	 * Note, we do not remove the inode from TNC even if the last reference
	 * to it has just been deleted, because the inode may still be opened.
	 * Instead, the inode has been added to orphan lists and the orphan
	 * subsystem will take further care about it.
	 */
	FUNC11(c, &ino_key, inode->i_ino);
	ino_offs = dent_offs + aligned_dlen;
	err = FUNC35(c, &ino_key, lnum, ino_offs, ilen, hash_ino);
	if (err)
		goto out_ro;

	FUNC11(c, &ino_key, dir->i_ino);
	ino_offs += aligned_ilen;
	err = FUNC35(c, &ino_key, lnum, ino_offs,
			    UBIFS_INO_NODE_SZ + host_ui->data_len, hash_ino_host);
	if (err)
		goto out_ro;

	FUNC7(c);
	FUNC22(&ui->ui_lock);
	ui->synced_i_size = ui->ui_size;
	FUNC23(&ui->ui_lock);
	if (xent) {
		FUNC22(&host_ui->ui_lock);
		host_ui->synced_i_size = host_ui->ui_size;
		FUNC23(&host_ui->ui_lock);
	}
	FUNC16(c, ui);
	FUNC16(c, host_ui);
	return 0;

out_finish:
	FUNC7(c);
out_free:
	FUNC13(dent);
	return err;

out_release:
	FUNC20(c, BASEHD);
	FUNC13(dent);
out_ro:
	FUNC34(c, err);
	if (last_reference)
		FUNC30(c, inode->i_ino);
	FUNC7(c);
	return err;
}