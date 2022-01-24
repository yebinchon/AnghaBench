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
struct ubifs_data_node {int /*<<< orphan*/  data; int /*<<< orphan*/  compr_size; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int UBIFS_BLOCK_SIZE ; 
 int FUNC0 (struct inode const*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(const struct inode *inode, struct ubifs_data_node *dn,
		  unsigned int *out_len, int block)
{
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	int err;
	unsigned int clen = FUNC1(dn->compr_size);
	unsigned int dlen = *out_len;

	if (clen <= 0 || clen > UBIFS_BLOCK_SIZE || clen > dlen) {
		FUNC4(c, "bad compr_size: %i", clen);
		return -EINVAL;
	}

	FUNC3(c, dlen <= UBIFS_BLOCK_SIZE);
	err = FUNC0(inode, FUNC5(&dn->data),
					    dlen, FUNC2(&dn->data),
					    block);
	if (err) {
		FUNC4(c, "fscrypt_decrypt_block_inplace() failed: %d", err);
		return err;
	}
	*out_len = clen;

	return 0;
}