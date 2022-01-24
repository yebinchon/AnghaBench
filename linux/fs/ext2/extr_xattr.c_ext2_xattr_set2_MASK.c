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
struct super_block {int dummy; } ;
struct mb_cache {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; struct super_block* i_sb; } ;
struct ext2_xattr_header {scalar_t__ h_refcount; scalar_t__ h_hash; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  ext2_fsblk_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int i_file_acl; int /*<<< orphan*/  i_block_group; } ;

/* Variables and functions */
 struct mb_cache* FUNC0 (struct inode*) ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct ext2_xattr_header* FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct inode*,int /*<<< orphan*/ ,int*) ; 
 struct buffer_head* FUNC17 (struct inode*,struct ext2_xattr_header*) ; 
 int /*<<< orphan*/  FUNC18 (struct mb_cache*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct mb_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,struct ext2_xattr_header*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC28 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC30 (struct buffer_head*) ; 
 int FUNC31 (struct inode*,int) ; 
 scalar_t__ FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (struct buffer_head*) ; 

__attribute__((used)) static int
FUNC34(struct inode *inode, struct buffer_head *old_bh,
		struct ext2_xattr_header *header)
{
	struct super_block *sb = inode->i_sb;
	struct buffer_head *new_bh = NULL;
	int error;
	struct mb_cache *ea_block_cache = FUNC0(inode);

	if (header) {
		new_bh = FUNC17(inode, header);
		if (new_bh) {
			/* We found an identical block in the cache. */
			if (new_bh == old_bh) {
				FUNC12(new_bh, "keeping this block");
			} else {
				/* The old block is released after updating
				   the inode.  */
				FUNC12(new_bh, "reusing block");

				error = FUNC10(inode, 1);
				if (error) {
					FUNC33(new_bh);
					goto cleanup;
				}
				FUNC21(&FUNC2(new_bh)->h_refcount, 1);
				FUNC12(new_bh, "refcount now=%d",
					FUNC22(FUNC2(new_bh)->h_refcount));
			}
			FUNC33(new_bh);
		} else if (old_bh && header == FUNC2(old_bh)) {
			/* Keep this block. No need to lock the block as we
			   don't need to change the reference count. */
			new_bh = old_bh;
			FUNC20(new_bh);
			FUNC18(ea_block_cache, new_bh);
		} else {
			/* We need to allocate a new block */
			ext2_fsblk_t goal = FUNC15(sb,
						FUNC1(inode)->i_block_group);
			int block = FUNC16(inode, goal, &error);
			if (error)
				goto cleanup;
			FUNC13(inode, "creating block %d", block);

			new_bh = FUNC28(sb, block);
			if (FUNC32(!new_bh)) {
				FUNC14(inode, block, 1);
				FUNC25(inode);
				error = -ENOMEM;
				goto cleanup;
			}
			FUNC23(new_bh);
			FUNC27(new_bh->b_data, header, new_bh->b_size);
			FUNC29(new_bh);
			FUNC33(new_bh);
			FUNC18(ea_block_cache, new_bh);
			
			FUNC19(sb);
		}
		FUNC24(new_bh);
		if (FUNC3(inode)) {
			FUNC30(new_bh);
			error = -EIO;
			if (FUNC6(new_bh) && !FUNC7(new_bh))
				goto cleanup;
		}
	}

	/* Update the inode. */
	FUNC1(inode)->i_file_acl = new_bh ? new_bh->b_blocknr : 0;
	inode->i_ctime = FUNC9(inode);
	if (FUNC3(inode)) {
		error = FUNC31(inode, 1);
		/* In case sync failed due to ENOSPC the inode was actually
		 * written (only some dirty data were not) so we just proceed
		 * as if nothing happened and cleanup the unused block */
		if (error && error != -ENOSPC) {
			if (new_bh && new_bh != old_bh) {
				FUNC11(inode, 1);
				FUNC25(inode);
			}
			goto cleanup;
		}
	} else
		FUNC25(inode);

	error = 0;
	if (old_bh && old_bh != new_bh) {
		/*
		 * If there was an old block and we are no longer using it,
		 * release the old block.
		 */
		FUNC23(old_bh);
		if (FUNC2(old_bh)->h_refcount == FUNC8(1)) {
			__u32 hash = FUNC22(FUNC2(old_bh)->h_hash);

			/*
			 * This must happen under buffer lock for
			 * ext2_xattr_set2() to reliably detect freed block
			 */
			FUNC26(ea_block_cache, hash,
					      old_bh->b_blocknr);
			/* Free the old block. */
			FUNC12(old_bh, "freeing");
			FUNC14(inode, old_bh->b_blocknr, 1);
			FUNC25(inode);
			/* We let our caller release old_bh, so we
			 * need to duplicate the buffer before. */
			FUNC20(old_bh);
			FUNC4(old_bh);
		} else {
			/* Decrement the refcount only. */
			FUNC21(&FUNC2(old_bh)->h_refcount, -1);
			FUNC11(inode, 1);
			FUNC25(inode);
			FUNC24(old_bh);
			FUNC12(old_bh, "refcount now=%d",
				FUNC22(FUNC2(old_bh)->h_refcount));
		}
		FUNC33(old_bh);
	}

cleanup:
	FUNC5(new_bh);

	return error;
}