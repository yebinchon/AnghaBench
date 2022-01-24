#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; } ;
struct ext4_super_block {int /*<<< orphan*/  s_first_data_block; } ;
struct ext4_extent_header {scalar_t__ eh_depth; void* eh_max; void* eh_entries; int /*<<< orphan*/  eh_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_13__ {int /*<<< orphan*/  i_data; } ;
struct TYPE_12__ {struct ext4_super_block* s_es; } ;
struct TYPE_11__ {int /*<<< orphan*/  ee_block; } ;
struct TYPE_10__ {int /*<<< orphan*/  ei_block; } ;
struct TYPE_9__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXT4_EXT_MAGIC ; 
 TYPE_8__* FUNC0 (struct inode*) ; 
 unsigned int EXT4_MB_HINT_TRY_GOAL ; 
 TYPE_6__* FUNC1 (TYPE_1__*) ; 
 TYPE_5__* FUNC2 (struct ext4_extent_header*) ; 
 TYPE_2__* FUNC3 (struct ext4_extent_header*) ; 
 int GFP_NOFS ; 
 int __GFP_MOVABLE ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct ext4_extent_header*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,struct inode*,scalar_t__,unsigned int,int /*<<< orphan*/ *,int*) ; 
 struct ext4_extent_header* FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (struct inode*) ; 
 struct ext4_extent_header* FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 struct buffer_head* FUNC27 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC31(handle_t *handle, struct inode *inode,
				 unsigned int flags)
{
	struct ext4_extent_header *neh;
	struct buffer_head *bh;
	ext4_fsblk_t newblock, goal = 0;
	struct ext4_super_block *es = FUNC1(inode->i_sb)->s_es;
	int err = 0;
	size_t ext_size = 0;

	/* Try to prepend new index to old one */
	if (FUNC19(inode))
		goal = FUNC11(FUNC3(FUNC20(inode)));
	if (goal > FUNC23(es->s_first_data_block)) {
		flags |= EXT4_MB_HINT_TRY_GOAL;
		goal--;
	} else
		goal = FUNC13(inode);
	newblock = FUNC16(handle, inode, goal, flags,
					NULL, &err);
	if (newblock == 0)
		return err;

	bh = FUNC27(inode->i_sb, newblock, __GFP_MOVABLE | GFP_NOFS);
	if (FUNC29(!bh))
		return -ENOMEM;
	FUNC24(bh);

	err = FUNC14(handle, bh);
	if (err) {
		FUNC30(bh);
		goto out;
	}

	ext_size = sizeof(FUNC0(inode)->i_data);
	/* move top-level index/leaf into new block */
	FUNC25(bh->b_data, FUNC0(inode)->i_data, ext_size);
	/* zero out unused area in the extent block */
	FUNC26(bh->b_data + ext_size, 0, inode->i_sb->s_blocksize - ext_size);

	/* set size of new block */
	neh = FUNC17(bh);
	/* old root could have indexes or leaves
	 * so calculate e_max right way */
	if (FUNC19(inode))
		neh->eh_max = FUNC5(FUNC7(inode, 0));
	else
		neh->eh_max = FUNC5(FUNC6(inode, 0));
	neh->eh_magic = EXT4_EXT_MAGIC;
	FUNC9(inode, neh);
	FUNC28(bh);
	FUNC30(bh);

	err = FUNC10(handle, inode, bh);
	if (err)
		goto out;

	/* Update top-level index: num,max,pointer */
	neh = FUNC20(inode);
	neh->eh_entries = FUNC5(1);
	FUNC12(FUNC3(neh), newblock);
	if (neh->eh_depth == 0) {
		/* Root extent block becomes index block */
		neh->eh_max = FUNC5(FUNC8(inode, 0));
		FUNC3(neh)->ei_block =
			FUNC2(neh)->ee_block;
	}
	FUNC18("new root: num %d(%d), lblock %d, ptr %llu\n",
		  FUNC22(neh->eh_entries), FUNC22(neh->eh_max),
		  FUNC23(FUNC3(neh)->ei_block),
		  FUNC11(FUNC3(neh)));

	FUNC21(&neh->eh_depth, 1);
	FUNC15(handle, inode);
out:
	FUNC4(bh);

	return err;
}