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
struct ufs_sb_private_info {int s_bshift; int s_apb; int /*<<< orphan*/  s_bsize; } ;
struct ufs_inode_info {int /*<<< orphan*/  truncate_mutex; int /*<<< orphan*/  meta_lock; int /*<<< orphan*/  i_lastfrag; } ;
struct ufs_buffer_head {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
typedef  int sector_t ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRECT_FRAGMENT ; 
 struct ufs_inode_info* FUNC0 (struct inode*) ; 
 unsigned int UFS_IND_BLOCK ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 unsigned int UFS_TIND_BLOCK ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,unsigned int,struct ufs_buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ufs_buffer_head* FUNC9 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct ufs_sb_private_info*,struct ufs_buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (struct ufs_sb_private_info*,void*) ; 
 scalar_t__ FUNC13 (struct super_block*,void*) ; 
 void* FUNC14 (struct ufs_sb_private_info*,struct ufs_inode_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct inode *inode)
{
	struct ufs_inode_info *ufsi = FUNC0(inode);
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC1(sb)->s_uspi;
	unsigned offsets[4];
	int depth;
	int depth2;
	unsigned i;
	struct ufs_buffer_head *ubh[3];
	void *p;
	u64 block;

	if (inode->i_size) {
		sector_t last = (inode->i_size - 1) >> uspi->s_bshift;
		depth = FUNC11(inode, last, offsets);
		if (!depth)
			return;
	} else {
		depth = 1;
	}

	for (depth2 = depth - 1; depth2; depth2--)
		if (offsets[depth2] != uspi->s_apb - 1)
			break;

	FUNC5(&ufsi->truncate_mutex);
	if (depth == 1) {
		FUNC15(inode);
		offsets[0] = UFS_IND_BLOCK;
	} else {
		/* get the blocks that should be partially emptied */
		p = FUNC14(uspi, ufsi, offsets[0]++);
		for (i = 0; i < depth2; i++) {
			block = FUNC13(sb, p);
			if (!block)
				break;
			ubh[i] = FUNC9(sb, block, uspi->s_bsize);
			if (!ubh[i]) {
				FUNC16(&ufsi->meta_lock);
				FUNC12(uspi, p);
				FUNC17(&ufsi->meta_lock);
				break;
			}
			p = FUNC10(uspi, ubh[i], offsets[i + 1]++);
		}
		while (i--)
			FUNC2(inode, offsets[i + 1], ubh[i], depth - i - 1);
	}
	for (i = offsets[0]; i <= UFS_TIND_BLOCK; i++) {
		p = FUNC14(uspi, ufsi, i);
		block = FUNC13(sb, p);
		if (block) {
			FUNC16(&ufsi->meta_lock);
			FUNC12(uspi, p);
			FUNC17(&ufsi->meta_lock);
			FUNC3(inode, block, i - UFS_IND_BLOCK + 1);
		}
	}
	FUNC7(&ufsi->meta_lock);
	ufsi->i_lastfrag = DIRECT_FRAGMENT;
	FUNC8(&ufsi->meta_lock);
	FUNC4(inode);
	FUNC6(&ufsi->truncate_mutex);
}