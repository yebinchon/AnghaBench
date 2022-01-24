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
struct udf_inode_info {scalar_t__ i_next_alloc_block; int /*<<< orphan*/  i_data_sem; int /*<<< orphan*/  i_next_alloc_goal; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int EIO ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct inode*,scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, sector_t block,
			 struct buffer_head *bh_result, int create)
{
	int err, new;
	sector_t phys = 0;
	struct udf_inode_info *iinfo;

	if (!create) {
		phys = FUNC5(inode, block);
		if (phys)
			FUNC3(bh_result, inode->i_sb, phys);
		return 0;
	}

	err = -EIO;
	new = 0;
	iinfo = FUNC0(inode);

	FUNC1(&iinfo->i_data_sem);
	if (block == iinfo->i_next_alloc_block + 1) {
		iinfo->i_next_alloc_block++;
		iinfo->i_next_alloc_goal++;
	}

	FUNC6(inode);
	phys = FUNC2(inode, block, &err, &new);
	if (!phys)
		goto abort;

	if (new)
		FUNC4(bh_result);
	FUNC3(bh_result, inode->i_sb, phys);

abort:
	FUNC7(&iinfo->i_data_sem);
	return err;
}