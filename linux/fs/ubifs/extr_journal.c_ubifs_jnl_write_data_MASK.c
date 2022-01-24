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
struct ubifs_inode {int flags; int compr_type; } ;
struct ubifs_info {int /*<<< orphan*/  write_reserve_mutex; TYPE_2__* jheads; struct ubifs_data_node* write_reserve_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_data_node {int /*<<< orphan*/  compr_type; scalar_t__ compr_size; int /*<<< orphan*/  data; int /*<<< orphan*/  size; int /*<<< orphan*/  key; TYPE_1__ ch; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wbuf; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int COMPRESSED_DATA_NODE_BUF_SZ ; 
 size_t DATAHD ; 
 int GFP_NOFS ; 
 int UBIFS_BLOCK_SIZE ; 
 scalar_t__ UBIFS_CIPHER_BLOCK_SIZE ; 
 int UBIFS_COMPR_FL ; 
 int UBIFS_COMPR_NONE ; 
 int /*<<< orphan*/  UBIFS_DATA_NODE ; 
 int UBIFS_DATA_NODE_SZ ; 
 int UBIFS_HASH_ARR_SZ ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (union ubifs_key const*,char*,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC6 (struct ubifs_info*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,union ubifs_key const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_data_node*) ; 
 struct ubifs_data_node* FUNC9 (int,int) ; 
 int FUNC10 (struct ubifs_info*,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,int) ; 
 int FUNC16 (struct ubifs_info*) ; 
 scalar_t__ FUNC17 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct ubifs_info*,void const*,int,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC19 (struct inode const*) ; 
 int FUNC20 (struct inode const*,struct ubifs_data_node*,int,int*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC21 (struct inode const*) ; 
 int FUNC22 (struct ubifs_info*,struct ubifs_data_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct ubifs_info*,struct ubifs_data_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct ubifs_info*,int) ; 
 int FUNC25 (struct ubifs_info*,union ubifs_key const*,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC27 (struct ubifs_info*,size_t,struct ubifs_data_node*,int,int*,int*,int /*<<< orphan*/ ) ; 

int FUNC28(struct ubifs_info *c, const struct inode *inode,
			 const union ubifs_key *key, const void *buf, int len)
{
	struct ubifs_data_node *data;
	int err, lnum, offs, compr_type, out_len, compr_len, auth_len;
	int dlen = COMPRESSED_DATA_NODE_BUF_SZ, allocated = 1;
	int write_len;
	struct ubifs_inode *ui = FUNC21(inode);
	bool encrypted = FUNC19(inode);
	u8 hash[UBIFS_HASH_ARR_SZ];

	FUNC3(key, "ino %lu, blk %u, len %d, key ",
		(unsigned long)FUNC6(c, key), FUNC5(c, key), len);
	FUNC15(c, len <= UBIFS_BLOCK_SIZE);

	if (encrypted)
		dlen += UBIFS_CIPHER_BLOCK_SIZE;

	auth_len = FUNC16(c);

	data = FUNC9(dlen + auth_len, GFP_NOFS | __GFP_NOWARN);
	if (!data) {
		/*
		 * Fall-back to the write reserve buffer. Note, we might be
		 * currently on the memory reclaim path, when the kernel is
		 * trying to free some memory by writing out dirty pages. The
		 * write reserve buffer helps us to guarantee that we are
		 * always able to write the data.
		 */
		allocated = 0;
		FUNC11(&c->write_reserve_mutex);
		data = c->write_reserve_buf;
	}

	data->ch.node_type = UBIFS_DATA_NODE;
	FUNC7(c, key, &data->key);
	data->size = FUNC2(len);

	if (!(ui->flags & UBIFS_COMPR_FL))
		/* Compression is disabled for this inode */
		compr_type = UBIFS_COMPR_NONE;
	else
		compr_type = ui->compr_type;

	out_len = compr_len = dlen - UBIFS_DATA_NODE_SZ;
	FUNC18(c, buf, len, &data->data, &compr_len, &compr_type);
	FUNC15(c, compr_len <= UBIFS_BLOCK_SIZE);

	if (encrypted) {
		err = FUNC20(inode, data, compr_len, &out_len, FUNC5(c, key));
		if (err)
			goto out_free;

	} else {
		data->compr_size = 0;
		out_len = compr_len;
	}

	dlen = UBIFS_DATA_NODE_SZ + out_len;
	if (FUNC17(c))
		write_len = FUNC0(dlen, 8) + auth_len;
	else
		write_len = dlen;

	data->compr_type = FUNC1(compr_type);

	/* Make reservation before allocating sequence numbers */
	err = FUNC10(c, DATAHD, write_len);
	if (err)
		goto out_free;

	FUNC23(c, data, dlen, 0);
	err = FUNC27(c, DATAHD, data, write_len, &lnum, &offs, 0);
	if (err)
		goto out_release;

	err = FUNC22(c, data, hash);
	if (err)
		goto out_release;

	FUNC26(&c->jheads[DATAHD].wbuf, FUNC6(c, key));
	FUNC13(c, DATAHD);

	FUNC14(c, lnum);

	err = FUNC25(c, key, lnum, offs, dlen, hash);
	if (err)
		goto out_ro;

	FUNC4(c);
	if (!allocated)
		FUNC12(&c->write_reserve_mutex);
	else
		FUNC8(data);
	return 0;

out_release:
	FUNC13(c, DATAHD);
out_ro:
	FUNC24(c, err);
	FUNC4(c);
out_free:
	if (!allocated)
		FUNC12(&c->write_reserve_mutex);
	else
		FUNC8(data);
	return err;
}