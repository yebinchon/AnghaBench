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
struct super_block {int s_blocksize_bits; } ;
struct isofs_iget5_callback_data {unsigned long block; unsigned long offset; } ;
struct inode {int i_state; } ;

/* Variables and functions */
 long EINVAL ; 
 long ENOMEM ; 
 struct inode* FUNC0 (long) ; 
 int I_NEW ; 
 struct inode* FUNC1 (struct super_block*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct isofs_iget5_callback_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  isofs_iget5_set ; 
 int /*<<< orphan*/  isofs_iget5_test ; 
 long FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

struct inode *FUNC5(struct super_block *sb,
			   unsigned long block,
			   unsigned long offset,
			   int relocated)
{
	unsigned long hashval;
	struct inode *inode;
	struct isofs_iget5_callback_data data;
	long ret;

	if (offset >= 1ul << sb->s_blocksize_bits)
		return FUNC0(-EINVAL);

	data.block = block;
	data.offset = offset;

	hashval = (block << sb->s_blocksize_bits) | offset;

	inode = FUNC1(sb, hashval, &isofs_iget5_test,
				&isofs_iget5_set, &data);

	if (!inode)
		return FUNC0(-ENOMEM);

	if (inode->i_state & I_NEW) {
		ret = FUNC3(inode, relocated);
		if (ret < 0) {
			FUNC2(inode);
			inode = FUNC0(ret);
		} else {
			FUNC4(inode);
		}
	}

	return inode;
}