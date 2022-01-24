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
typedef  int u32 ;
struct mb_cache_entry {int e_reusable; } ;
struct mb_cache {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_inode_array {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  h_refcount; int /*<<< orphan*/  h_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 TYPE_1__* FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,char*) ; 
 struct mb_cache* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int EXT4_FREE_BLOCKS_FORGET ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int EXT4_XATTR_REFCOUNT_MAX ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int,struct ext4_xattr_inode_array**,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct mb_cache*,int,int /*<<< orphan*/ ) ; 
 struct mb_cache_entry* FUNC23 (struct mb_cache*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct mb_cache*,struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 

__attribute__((used)) static void
FUNC26(handle_t *handle, struct inode *inode,
			 struct buffer_head *bh,
			 struct ext4_xattr_inode_array **ea_inode_array,
			 int extra_credits)
{
	struct mb_cache *ea_block_cache = FUNC3(inode);
	u32 hash, ref;
	int error = 0;

	FUNC2(bh, "get_write_access");
	error = FUNC15(handle, bh);
	if (error)
		goto out;

	FUNC21(bh);
	hash = FUNC20(FUNC1(bh)->h_hash);
	ref = FUNC20(FUNC1(bh)->h_refcount);
	if (ref == 1) {
		FUNC9(bh, "refcount now=0; freeing");
		/*
		 * This must happen under buffer lock for
		 * ext4_xattr_block_set() to reliably detect freed block
		 */
		if (ea_block_cache)
			FUNC22(ea_block_cache, hash,
					      bh->b_blocknr);
		FUNC19(bh);
		FUNC25(bh);

		if (FUNC14(inode->i_sb))
			FUNC18(handle, inode, bh,
						     FUNC0(bh),
						     true /* block_csum */,
						     ea_inode_array,
						     extra_credits,
						     true /* skip_quota */);
		FUNC10(handle, inode, bh, 0, 1,
				 EXT4_FREE_BLOCKS_METADATA |
				 EXT4_FREE_BLOCKS_FORGET);
	} else {
		ref--;
		FUNC1(bh)->h_refcount = FUNC7(ref);
		if (ref == EXT4_XATTR_REFCOUNT_MAX - 1) {
			struct mb_cache_entry *ce;

			if (ea_block_cache) {
				ce = FUNC23(ea_block_cache, hash,
							bh->b_blocknr);
				if (ce) {
					ce->e_reusable = 1;
					FUNC24(ea_block_cache, ce);
				}
			}
		}

		FUNC17(inode, bh);
		/*
		 * Beware of this ugliness: Releasing of xattr block references
		 * from different inodes can race and so we have to protect
		 * from a race where someone else frees the block (and releases
		 * its journal_head) before we are done dirtying the buffer. In
		 * nojournal mode this race is harmless and we actually cannot
		 * call ext4_handle_dirty_metadata() with locked buffer as
		 * that function can call sync_dirty_buffer() so for that case
		 * we handle the dirtying after unlocking the buffer.
		 */
		if (FUNC13(handle))
			error = FUNC11(handle, inode, bh);
		FUNC25(bh);
		if (!FUNC13(handle))
			error = FUNC11(handle, inode, bh);
		if (FUNC6(inode))
			FUNC12(handle);
		FUNC8(inode, FUNC4(FUNC5(inode->i_sb), 1));
		FUNC9(bh, "refcount now=%d; releasing",
			  FUNC20(FUNC1(bh)->h_refcount));
	}
out:
	FUNC16(inode->i_sb, error);
	return;
}