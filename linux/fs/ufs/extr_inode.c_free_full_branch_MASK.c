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
typedef  scalar_t__ u64 ;
struct ufs_sb_private_info {unsigned int s_apb; int /*<<< orphan*/  s_fpb; int /*<<< orphan*/  s_bsize; } ;
struct ufs_buffer_head {int dummy; } ;
struct to_free {struct inode* inode; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct to_free*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_buffer_head*) ; 
 struct ufs_buffer_head* FUNC3 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct ufs_sb_private_info*,struct ufs_buffer_head*,unsigned int) ; 
 scalar_t__ FUNC5 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, u64 ind_block, int depth)
{
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC0(sb)->s_uspi;
	struct ufs_buffer_head *ubh = FUNC3(sb, ind_block, uspi->s_bsize);
	unsigned i;

	if (!ubh)
		return;

	if (--depth) {
		for (i = 0; i < uspi->s_apb; i++) {
			void *p = FUNC4(uspi, ubh, i);
			u64 block = FUNC5(sb, p);
			if (block)
				FUNC7(inode, block, depth);
		}
	} else {
		struct to_free ctx = {.inode = inode};

		for (i = 0; i < uspi->s_apb; i++) {
			void *p = FUNC4(uspi, ubh, i);
			u64 block = FUNC5(sb, p);
			if (block)
				FUNC1(&ctx, block, uspi->s_fpb);
		}
		FUNC1(&ctx, 0, 0);
	}

	FUNC2(ubh);
	FUNC6(inode, ind_block, uspi->s_fpb);
}