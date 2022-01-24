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
struct ubifs_inode {int data_len; int /*<<< orphan*/  ui_lock; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  synced_i_size; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_ino_node {int dummy; } ;
struct ubifs_info {TYPE_2__* jheads; } ;
struct TYPE_3__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_dent_node {char* name; int /*<<< orphan*/  nlen; int /*<<< orphan*/  type; scalar_t__ inum; int /*<<< orphan*/  key; TYPE_1__ ch; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct fscrypt_name {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wbuf; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 size_t BASEHD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC1 (struct inode const*) ; 
 int UBIFS_DENT_NODE_SZ ; 
 int UBIFS_HASH_ARR_SZ ; 
 int UBIFS_INO_NODE_SZ ; 
 int /*<<< orphan*/  UBIFS_XENT_NODE ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 size_t FUNC4 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ubifs_info*,size_t,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,struct ubifs_inode*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,struct ubifs_ino_node*,struct inode const*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ubifs_info*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct ubifs_info*,int) ; 
 int FUNC22 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct ubifs_info*,int) ; 
 int FUNC24 (struct ubifs_info*) ; 
 struct ubifs_inode* FUNC25 (struct inode const*) ; 
 int FUNC26 (struct ubifs_info*,struct ubifs_ino_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct ubifs_info*,struct ubifs_dent_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct ubifs_info*,int) ; 
 int FUNC29 (struct ubifs_info*,union ubifs_key*,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC30 (struct ubifs_info*,union ubifs_key*,struct fscrypt_name const*) ; 
 int FUNC31 (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC33 (struct ubifs_info*,size_t,struct ubifs_dent_node*,int,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC34 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC35 (struct ubifs_dent_node*) ; 

int FUNC36(struct ubifs_info *c, const struct inode *host,
			   const struct inode *inode,
			   const struct fscrypt_name *nm)
{
	int err, xlen, hlen, len, lnum, xent_offs, aligned_xlen, write_len;
	struct ubifs_dent_node *xent;
	struct ubifs_ino_node *ino;
	union ubifs_key xent_key, key1, key2;
	int sync = FUNC1(host);
	struct ubifs_inode *host_ui = FUNC25(host);
	u8 hash[UBIFS_HASH_ARR_SZ];

	FUNC23(c, inode->i_nlink == 0);
	FUNC23(c, FUNC16(&host_ui->ui_mutex));

	/*
	 * Since we are deleting the inode, we do not bother to attach any data
	 * to it and assume its length is %UBIFS_INO_NODE_SZ.
	 */
	xlen = UBIFS_DENT_NODE_SZ + FUNC4(nm) + 1;
	aligned_xlen = FUNC0(xlen, 8);
	hlen = host_ui->data_len + UBIFS_INO_NODE_SZ;
	len = aligned_xlen + UBIFS_INO_NODE_SZ + FUNC0(hlen, 8);

	write_len = len + FUNC24(c);

	xent = FUNC11(write_len, GFP_NOFS);
	if (!xent)
		return -ENOMEM;

	/* Make reservation before allocating sequence numbers */
	err = FUNC13(c, BASEHD, write_len);
	if (err) {
		FUNC10(xent);
		return err;
	}

	xent->ch.node_type = UBIFS_XENT_NODE;
	FUNC34(c, &xent_key, host->i_ino, nm);
	FUNC9(c, &xent_key, xent->key);
	xent->inum = 0;
	xent->type = FUNC6(inode->i_mode);
	xent->nlen = FUNC2(FUNC4(nm));
	FUNC15(xent->name, FUNC5(nm), FUNC4(nm));
	xent->name[FUNC4(nm)] = '\0';
	FUNC35(xent);
	FUNC27(c, xent, xlen, 0);

	ino = (void *)xent + aligned_xlen;
	FUNC17(c, ino, inode, 0);
	ino = (void *)ino + UBIFS_INO_NODE_SZ;
	FUNC17(c, ino, host, 1);
	err = FUNC26(c, ino, hash);
	if (err)
		goto out_release;

	err = FUNC33(c, BASEHD, xent, write_len, &lnum, &xent_offs, sync);
	if (!sync && !err)
		FUNC32(&c->jheads[BASEHD].wbuf, host->i_ino);
	FUNC18(c, BASEHD);

	FUNC21(c, lnum);
	FUNC10(xent);
	if (err)
		goto out_ro;

	/* Remove the extended attribute entry from TNC */
	err = FUNC30(c, &xent_key, nm);
	if (err)
		goto out_ro;
	err = FUNC22(c, lnum, xlen);
	if (err)
		goto out_ro;

	/*
	 * Remove all nodes belonging to the extended attribute inode from TNC.
	 * Well, there actually must be only one node - the inode itself.
	 */
	FUNC12(c, &key1, inode->i_ino);
	FUNC7(c, &key2, inode->i_ino);
	err = FUNC31(c, &key1, &key2);
	if (err)
		goto out_ro;
	err = FUNC22(c, lnum, UBIFS_INO_NODE_SZ);
	if (err)
		goto out_ro;

	/* And update TNC with the new host inode position */
	FUNC8(c, &key1, host->i_ino);
	err = FUNC29(c, &key1, lnum, xent_offs + len - hlen, hlen, hash);
	if (err)
		goto out_ro;

	FUNC3(c);
	FUNC19(&host_ui->ui_lock);
	host_ui->synced_i_size = host_ui->ui_size;
	FUNC20(&host_ui->ui_lock);
	FUNC14(c, host_ui);
	return 0;

out_release:
	FUNC10(xent);
	FUNC18(c, BASEHD);
out_ro:
	FUNC28(c, err);
	FUNC3(c);
	return err;
}