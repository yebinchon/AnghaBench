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
struct ocfs2_super {int s_clustersize_bits; int /*<<< orphan*/  sb; } ;
struct ocfs2_move_extents_context {int auto_defrag; int clusters_moved; int new_phys_cpos; int /*<<< orphan*/  dealloc; int /*<<< orphan*/  et; int /*<<< orphan*/  refcount_loc; struct ocfs2_move_extents* range; struct inode* inode; } ;
struct ocfs2_move_extents {int me_len; int me_start; int me_threshold; void* me_new_offset; void* me_moved_len; int /*<<< orphan*/  me_flags; int /*<<< orphan*/  me_goal; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_MOVE_EXT_FL_COMPLETE ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct ocfs2_move_extents_context*,int,int,int*,int) ; 
 int FUNC12 (struct inode*,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC15 (struct ocfs2_move_extents_context*,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_super*,int) ; 

__attribute__((used)) static int FUNC18(struct buffer_head *di_bh,
				struct ocfs2_move_extents_context *context)
{
	int ret = 0, flags, do_defrag, skip = 0;
	u32 cpos, phys_cpos, move_start, len_to_move, alloc_size;
	u32 len_defraged = 0, defrag_thresh = 0, new_phys_cpos = 0;

	struct inode *inode = context->inode;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_move_extents *range = context->range;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);

	if ((FUNC3(inode) == 0) || (range->me_len == 0))
		return 0;

	if (FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		return 0;

	context->refcount_loc = FUNC4(di->i_refcount_loc);

	FUNC14(&context->et, FUNC0(inode), di_bh);
	FUNC13(&context->dealloc);

	/*
	 * TO-DO XXX:
	 *
	 * - xattr extents.
	 */

	do_defrag = context->auto_defrag;

	/*
	 * extents moving happens in unit of clusters, for the sake
	 * of simplicity, we may ignore two clusters where 'byte_start'
	 * and 'byte_start + len' were within.
	 */
	move_start = FUNC9(osb->sb, range->me_start);
	len_to_move = (range->me_start + range->me_len) >>
						osb->s_clustersize_bits;
	if (len_to_move >= move_start)
		len_to_move -= move_start;
	else
		len_to_move = 0;

	if (do_defrag) {
		defrag_thresh = range->me_threshold >> osb->s_clustersize_bits;
		if (defrag_thresh <= 1)
			goto done;
	} else
		new_phys_cpos = FUNC7(inode->i_sb,
							 range->me_goal);

	FUNC5(0, "Inode: %llu, start: %llu, len: %llu, cstart: %u, clen: %u, "
	     "thresh: %u\n",
	     (unsigned long long)FUNC1(inode)->ip_blkno,
	     (unsigned long long)range->me_start,
	     (unsigned long long)range->me_len,
	     move_start, len_to_move, defrag_thresh);

	cpos = move_start;
	while (len_to_move) {
		ret = FUNC12(inode, cpos, &phys_cpos, &alloc_size,
					 &flags);
		if (ret) {
			FUNC6(ret);
			goto out;
		}

		if (alloc_size > len_to_move)
			alloc_size = len_to_move;

		/*
		 * XXX: how to deal with a hole:
		 *
		 * - skip the hole of course
		 * - force a new defragmentation
		 */
		if (!phys_cpos) {
			if (do_defrag)
				len_defraged = 0;

			goto next;
		}

		if (do_defrag) {
			FUNC8(&alloc_size, &len_defraged,
						     defrag_thresh, &skip);
			/*
			 * skip large extents
			 */
			if (skip) {
				skip = 0;
				goto next;
			}

			FUNC5(0, "#Defrag: cpos: %u, phys_cpos: %u, "
			     "alloc_size: %u, len_defraged: %u\n",
			     cpos, phys_cpos, alloc_size, len_defraged);

			ret = FUNC11(context, cpos, phys_cpos,
						  &alloc_size, flags);
		} else {
			ret = FUNC15(context, cpos, phys_cpos,
						&new_phys_cpos, alloc_size,
						flags);

			new_phys_cpos += alloc_size;
		}

		if (ret < 0) {
			FUNC6(ret);
			goto out;
		}

		context->clusters_moved += alloc_size;
next:
		cpos += alloc_size;
		len_to_move -= alloc_size;
	}

done:
	range->me_flags |= OCFS2_MOVE_EXT_FL_COMPLETE;

out:
	range->me_moved_len = FUNC10(osb->sb,
						      context->clusters_moved);
	range->me_new_offset = FUNC10(osb->sb,
						       context->new_phys_cpos);

	FUNC17(osb, 1);
	FUNC16(osb, &context->dealloc);

	return ret;
}