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
struct ubifs_data_node {int /*<<< orphan*/  compr_size; int /*<<< orphan*/  data; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UBIFS_CIPHER_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (struct inode const*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

int FUNC8(const struct inode *inode, struct ubifs_data_node *dn,
		  unsigned int in_len, unsigned int *out_len, int block)
{
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	void *p = &dn->data;
	unsigned int pad_len = FUNC4(in_len, UBIFS_CIPHER_BLOCK_SIZE);
	int err;

	FUNC5(c, pad_len <= *out_len);
	dn->compr_size = FUNC0(in_len);

	/* pad to full block cipher length */
	if (pad_len != in_len)
		FUNC2(p + in_len, 0, pad_len - in_len);

	err = FUNC1(inode, FUNC7(p), pad_len,
					    FUNC3(p), block, GFP_NOFS);
	if (err) {
		FUNC6(c, "fscrypt_encrypt_block_inplace() failed: %d", err);
		return err;
	}
	*out_len = pad_len;

	return 0;
}