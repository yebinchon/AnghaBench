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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_extent_tree {struct ocfs2_extent_list* et_root_el; int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; scalar_t__ l_next_free_rec; scalar_t__ l_count; TYPE_1__* l_recs; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  e_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_extent_tree *et,
				    struct buffer_head **target_bh)
{
	int status = 0, i;
	u64 blkno;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list  *el;
	struct buffer_head *bh = NULL;
	struct buffer_head *lowest_bh = NULL;

	*target_bh = NULL;

	el = et->et_root_el;

	while(FUNC2(el->l_tree_depth) > 1) {
		if (FUNC2(el->l_next_free_rec) == 0) {
			status = FUNC5(FUNC6(et->et_ci),
					"Owner %llu has empty extent list (next_free_rec == 0)\n",
					(unsigned long long)FUNC7(et->et_ci));
			goto bail;
		}
		i = FUNC2(el->l_next_free_rec) - 1;
		blkno = FUNC3(el->l_recs[i].e_blkno);
		if (!blkno) {
			status = FUNC5(FUNC6(et->et_ci),
					"Owner %llu has extent list where extent # %d has no physical block start\n",
					(unsigned long long)FUNC7(et->et_ci), i);
			goto bail;
		}

		FUNC0(bh);
		bh = NULL;

		status = FUNC8(et->et_ci, blkno, &bh);
		if (status < 0) {
			FUNC4(status);
			goto bail;
		}

		eb = (struct ocfs2_extent_block *) bh->b_data;
		el = &eb->h_list;

		if (FUNC2(el->l_next_free_rec) <
		    FUNC2(el->l_count)) {
			FUNC0(lowest_bh);
			lowest_bh = bh;
			FUNC1(lowest_bh);
		}
	}

	/* If we didn't find one and the fe doesn't have any room,
	 * then return '1' */
	el = et->et_root_el;
	if (!lowest_bh && (el->l_next_free_rec == el->l_count))
		status = 1;

	*target_bh = lowest_bh;
bail:
	FUNC0(bh);

	return status;
}