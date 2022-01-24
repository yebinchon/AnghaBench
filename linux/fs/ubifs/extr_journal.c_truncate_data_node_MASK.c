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
struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct ubifs_data_node {int /*<<< orphan*/  size; int /*<<< orphan*/  compr_type; scalar_t__ compr_size; int /*<<< orphan*/  data; TYPE_1__ ch; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int UBIFS_BLOCK_SIZE ; 
 int UBIFS_COMPR_NONE ; 
 int UBIFS_DATA_NODE_SZ ; 
 int /*<<< orphan*/  WORST_COMPR_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info const*,void*,int,int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC8 (struct inode const*) ; 
 int FUNC9 (struct ubifs_info const*,int /*<<< orphan*/ *,int,void*,int*,int) ; 
 int FUNC10 (struct inode const*,struct ubifs_data_node*,int*,unsigned int) ; 
 int FUNC11 (struct inode const*,struct ubifs_data_node*,int,int*,unsigned int) ; 

__attribute__((used)) static int FUNC12(const struct ubifs_info *c, const struct inode *inode,
			      unsigned int block, struct ubifs_data_node *dn,
			      int *new_len)
{
	void *buf;
	int err, dlen, compr_type, out_len, old_dlen;

	out_len = FUNC5(dn->size);
	buf = FUNC3(out_len, WORST_COMPR_FACTOR, GFP_NOFS);
	if (!buf)
		return -ENOMEM;

	dlen = old_dlen = FUNC5(dn->ch.len) - UBIFS_DATA_NODE_SZ;
	compr_type = FUNC4(dn->compr_type);

	if (FUNC8(inode)) {
		err = FUNC10(inode, dn, &dlen, block);
		if (err)
			goto out;
	}

	if (compr_type == UBIFS_COMPR_NONE) {
		out_len = *new_len;
	} else {
		err = FUNC9(c, &dn->data, dlen, buf, &out_len, compr_type);
		if (err)
			goto out;

		FUNC7(c, buf, *new_len, &dn->data, &out_len, &compr_type);
	}

	if (FUNC8(inode)) {
		err = FUNC11(inode, dn, out_len, &old_dlen, block);
		if (err)
			goto out;

		out_len = old_dlen;
	} else {
		dn->compr_size = 0;
	}

	FUNC6(c, out_len <= UBIFS_BLOCK_SIZE);
	dn->compr_type = FUNC0(compr_type);
	dn->size = FUNC1(*new_len);
	*new_len = UBIFS_DATA_NODE_SZ + out_len;
	err = 0;
out:
	FUNC2(buf);
	return err;
}