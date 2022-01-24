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
struct virtual_node {int vn_nr_item; int vn_size; TYPE_1__* vn_vi; } ;
struct tree_balance {int /*<<< orphan*/  tb_sb; int /*<<< orphan*/ * rkey; scalar_t__* CFR; int /*<<< orphan*/  tb_path; struct virtual_node* tb_vn; } ;
struct item_head {int /*<<< orphan*/  ih_key; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int vi_type; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 scalar_t__ DOT_OFFSET ; 
 int IH_SIZE ; 
 int FUNC1 (struct buffer_head*) ; 
 struct buffer_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int VI_TYPE_LEFT_MERGEABLE ; 
 int VI_TYPE_RIGHT_MERGEABLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct item_head*) ; 
 struct item_head* FUNC8 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct item_head*) ; 
 int /*<<< orphan*/  leaves_removable ; 
 int /*<<< orphan*/  FUNC10 (struct tree_balance*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC11(struct tree_balance *tb, int lfree, int rfree)
{
	struct virtual_node *vn = tb->tb_vn;
	int ih_size;
	struct buffer_head *S0;

	S0 = FUNC2(tb->tb_path, 0);

	ih_size = 0;
	if (vn->vn_nr_item) {
		if (vn->vn_vi[0].vi_type & VI_TYPE_LEFT_MERGEABLE)
			ih_size += IH_SIZE;

		if (vn->vn_vi[vn->vn_nr_item - 1].
		    vi_type & VI_TYPE_RIGHT_MERGEABLE)
			ih_size += IH_SIZE;
	} else {
		/* there was only one item and it will be deleted */
		struct item_head *ih;

		FUNC4(FUNC0(S0) != 1,
		       "vs-8125: item number must be 1: it is %d",
		       FUNC0(S0));

		ih = FUNC8(S0, 0);
		if (tb->CFR[0]
		    && !FUNC5(&ih->ih_key,
					   FUNC6(tb->CFR[0],
							  tb->rkey[0])))
			/*
			 * Directory must be in correct state here: that is
			 * somewhere at the left side should exist first
			 * directory item. But the item being deleted can
			 * not be that first one because its right neighbor
			 * is item of the same directory. (But first item
			 * always gets deleted in last turn). So, neighbors
			 * of deleted item can be merged, so we can save
			 * ih_size
			 */
			if (FUNC7(ih)) {
				ih_size = IH_SIZE;

				/*
				 * we might check that left neighbor exists
				 * and is of the same directory
				 */
				FUNC4(FUNC9(ih) == DOT_OFFSET,
				       "vs-8130: first directory item can not be removed until directory is not empty");
			}

	}

	if (FUNC1(S0) + vn->vn_size <= rfree + lfree + ih_size) {
		FUNC10(tb, 0, -1, -1, -1, NULL, -1, -1);
		FUNC3(tb->tb_sb, leaves_removable);
		return 1;
	}
	return 0;

}