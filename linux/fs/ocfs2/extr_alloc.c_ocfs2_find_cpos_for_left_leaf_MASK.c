#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {int p_tree_depth; TYPE_2__* p_node; } ;
struct ocfs2_extent_list {TYPE_4__* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct TYPE_8__ {int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_blkno; } ;
struct TYPE_7__ {scalar_t__ b_blocknr; } ;
struct TYPE_6__ {TYPE_1__* bh; struct ocfs2_extent_list* el; } ;
struct TYPE_5__ {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EROFS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,unsigned long long) ; 
 scalar_t__ FUNC5 (struct ocfs2_extent_list*,TYPE_4__*) ; 
 TYPE_3__* FUNC6 (struct ocfs2_path*) ; 

int FUNC7(struct super_block *sb,
				  struct ocfs2_path *path, u32 *cpos)
{
	int i, j, ret = 0;
	u64 blkno;
	struct ocfs2_extent_list *el;

	FUNC0(path->p_tree_depth == 0);

	*cpos = 0;

	blkno = FUNC6(path)->b_blocknr;

	/* Start at the tree node just above the leaf and work our way up. */
	i = path->p_tree_depth - 1;
	while (i >= 0) {
		el = path->p_node[i].el;

		/*
		 * Find the extent record just before the one in our
		 * path.
		 */
		for(j = 0; j < FUNC1(el->l_next_free_rec); j++) {
			if (FUNC3(el->l_recs[j].e_blkno) == blkno) {
				if (j == 0) {
					if (i == 0) {
						/*
						 * We've determined that the
						 * path specified is already
						 * the leftmost one - return a
						 * cpos of zero.
						 */
						goto out;
					}
					/*
					 * The leftmost record points to our
					 * leaf - we need to travel up the
					 * tree one level.
					 */
					goto next_node;
				}

				*cpos = FUNC2(el->l_recs[j - 1].e_cpos);
				*cpos = *cpos + FUNC5(el,
							   &el->l_recs[j - 1]);
				*cpos = *cpos - 1;
				goto out;
			}
		}

		/*
		 * If we got here, we never found a valid node where
		 * the tree indicated one should be.
		 */
		FUNC4(sb, "Invalid extent tree at extent block %llu\n",
			    (unsigned long long)blkno);
		ret = -EROFS;
		goto out;

next_node:
		blkno = path->p_node[i].bh->b_blocknr;
		i--;
	}

out:
	return ret;
}