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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_fsblk_t ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__,char*) ; 
 int EXT4_FREE_BLOCKS_FORGET ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 struct buffer_head* FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,struct inode*) ; 

__attribute__((used)) static void FUNC18(handle_t *handle, struct inode *inode,
			       struct buffer_head *parent_bh,
			       __le32 *first, __le32 *last, int depth)
{
	ext4_fsblk_t nr;
	__le32 *p;

	if (FUNC11(handle))
		return;

	if (depth--) {
		struct buffer_head *bh;
		int addr_per_block = FUNC1(inode->i_sb);
		p = last;
		while (--p >= first) {
			nr = FUNC15(*p);
			if (!nr)
				continue;		/* A hole */

			if (!FUNC7(FUNC4(inode->i_sb),
						   nr, 1)) {
				FUNC2(inode,
						 "invalid indirect mapped "
						 "block %lu (level %d)",
						 (unsigned long) nr, depth);
				break;
			}

			/* Go read the buffer for the next level down */
			bh = FUNC16(inode->i_sb, nr);

			/*
			 * A read failure? Report error and clear slot
			 * (should be rare).
			 */
			if (!bh) {
				FUNC3(inode, nr,
						       "Read failure");
				continue;
			}

			/* This zaps the entire block.  Bottom up. */
			FUNC0(bh, "free child branches");
			FUNC18(handle, inode, bh,
					(__le32 *) bh->b_data,
					(__le32 *) bh->b_data + addr_per_block,
					depth);
			FUNC5(bh);

			/*
			 * Everything below this this pointer has been
			 * released.  Now let this top-of-subtree go.
			 *
			 * We want the freeing of this indirect block to be
			 * atomic in the journal with the updating of the
			 * bitmap block which owns it.  So make some room in
			 * the journal.
			 *
			 * We zero the parent pointer *after* freeing its
			 * pointee in the bitmaps, so if extend_transaction()
			 * for some reason fails to put the bitmap changes and
			 * the release into the same transaction, recovery
			 * will merely complain about releasing a free block,
			 * rather than leaking blocks.
			 */
			if (FUNC11(handle))
				return;
			if (FUNC17(handle, inode)) {
				FUNC13(handle, inode);
				FUNC14(handle, inode,
					    FUNC6(inode));
			}

			/*
			 * The forget flag here is critical because if
			 * we are journaling (and not doing data
			 * journaling), we have to make sure a revoke
			 * record is written to prevent the journal
			 * replay from overwriting the (former)
			 * indirect block if it gets reallocated as a
			 * data block.  This must happen in the same
			 * transaction where the data blocks are
			 * actually freed.
			 */
			FUNC8(handle, inode, NULL, nr, 1,
					 EXT4_FREE_BLOCKS_METADATA|
					 EXT4_FREE_BLOCKS_FORGET);

			if (parent_bh) {
				/*
				 * The block which we have just freed is
				 * pointed to by an indirect block: journal it
				 */
				FUNC0(parent_bh, "get_write_access");
				if (!FUNC12(handle,
								   parent_bh)){
					*p = 0;
					FUNC0(parent_bh,
					"call ext4_handle_dirty_metadata");
					FUNC10(handle,
								   inode,
								   parent_bh);
				}
			}
		}
	} else {
		/* We have reached the bottom of the tree. */
		FUNC0(parent_bh, "free data blocks");
		FUNC9(handle, inode, parent_bh, first, last);
	}
}