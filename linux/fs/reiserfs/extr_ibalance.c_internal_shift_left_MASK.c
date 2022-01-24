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
struct tree_balance {int dummy; } ;
struct buffer_info {scalar_t__ bi_position; int /*<<< orphan*/  bi_bh; int /*<<< orphan*/  bi_parent; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIRST_TO_LAST ; 
 int /*<<< orphan*/  FUNC1 (int,struct tree_balance*,int,struct buffer_info*,struct buffer_info*,int*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_info*,int,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_info*,struct buffer_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_balance*,struct buffer_head*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(
				/*
				 * INTERNAL_FROM_S_TO_L | INTERNAL_FROM_R_TO_S
				 */
				int mode,
				struct tree_balance *tb,
				int h, int pointer_amount)
{
	struct buffer_info dest_bi, src_bi;
	struct buffer_head *cf;
	int d_key_position;

	FUNC1(mode, tb, h, &dest_bi, &src_bi,
				       &d_key_position, &cf);

	/*printk("pointer_amount = %d\n",pointer_amount); */

	if (pointer_amount) {
		/*
		 * insert delimiting key from common father of dest and
		 * src to node dest into position B_NR_ITEM(dest)
		 */
		FUNC2(&dest_bi, FUNC0(dest_bi.bi_bh), cf,
				    d_key_position);

		if (FUNC0(src_bi.bi_bh) == pointer_amount - 1) {
			if (src_bi.bi_position /*src->b_item_order */  == 0)
				FUNC4(tb, cf, d_key_position,
					    src_bi.
					    bi_parent /*src->b_parent */ , 0);
		} else
			FUNC4(tb, cf, d_key_position, src_bi.bi_bh,
				    pointer_amount - 1);
	}
	/* last parameter is del_parameter */
	FUNC3(&dest_bi, &src_bi, FIRST_TO_LAST,
				     pointer_amount, 0);

}