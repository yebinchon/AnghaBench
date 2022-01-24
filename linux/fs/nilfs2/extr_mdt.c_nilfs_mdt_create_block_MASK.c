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
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct nilfs_transaction_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_bdev; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct buffer_head* FUNC4 (struct inode*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,unsigned long,struct buffer_head*,void (*) (struct inode*,struct buffer_head*,void*)) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, unsigned long block,
				  struct buffer_head **out_bh,
				  void (*init_block)(struct inode *,
						     struct buffer_head *,
						     void *))
{
	struct super_block *sb = inode->i_sb;
	struct nilfs_transaction_info ti;
	struct buffer_head *bh;
	int err;

	FUNC7(sb, &ti, 0);

	err = -ENOMEM;
	bh = FUNC4(inode, inode->i_mapping, block, 0);
	if (FUNC10(!bh))
		goto failed_unlock;

	err = -EEXIST;
	if (FUNC1(bh))
		goto failed_bh;

	FUNC12(bh);
	if (FUNC1(bh))
		goto failed_bh;

	bh->b_bdev = sb->s_bdev;
	err = FUNC5(inode, block, bh, init_block);
	if (FUNC3(!err)) {
		FUNC2(bh);
		*out_bh = bh;
	}

 failed_bh:
	FUNC11(bh->b_page);
	FUNC9(bh->b_page);
	FUNC0(bh);

 failed_unlock:
	if (FUNC3(!err))
		err = FUNC8(sb);
	else
		FUNC6(sb);

	return err;
}