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
struct item_head {int dummy; } ;
struct buffer_info {int /*<<< orphan*/  tb; struct buffer_head* bi_bh; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int FIRST_TO_LAST ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct item_head*) ; 
 int FUNC4 (struct item_head*) ; 
 scalar_t__ FUNC5 (struct item_head*) ; 
 struct item_head* FUNC6 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_info*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_info*) ; 

void FUNC10(struct buffer_info *cur_bi, int last_first,
		       int first, int del_num, int del_bytes)
{
	struct buffer_head *bh;
	int item_amount = FUNC0(bh = cur_bi->bi_bh);

	FUNC1(!bh, "10155: bh is not defined");
	FUNC1(del_num < 0, "10160: del_num can not be < 0. del_num==%d",
	       del_num);
	FUNC1(first < 0
	       || first + del_num > item_amount,
	       "10165: invalid number of first item to be deleted (%d) or "
	       "no so much items (%d) to delete (only %d)", first,
	       first + del_num, item_amount);

	if (del_num == 0)
		return;

	if (first == 0 && del_num == item_amount && del_bytes == -1) {
		FUNC9(cur_bi);
		FUNC2(cur_bi->tb, bh, 0);
		return;
	}

	if (del_bytes == -1)
		/* delete del_num items beginning from item in position first */
		FUNC8(cur_bi, first, del_num);
	else {
		if (last_first == FIRST_TO_LAST) {
			/*
			 * delete del_num-1 items beginning from
			 * item in position first
			 */
			FUNC8(cur_bi, first, del_num - 1);

			/*
			 * delete the part of the first item of the bh
			 * do not delete item header
			 */
			FUNC7(cur_bi, 0, 0, del_bytes);
		} else {
			struct item_head *ih;
			int len;

			/*
			 * delete del_num-1 items beginning from
			 * item in position first+1
			 */
			FUNC8(cur_bi, first + 1,
						   del_num - 1);

			ih = FUNC6(bh, FUNC0(bh) - 1);
			if (FUNC5(ih))
				/* the last item is directory  */
				/*
				 * len = numbers of directory entries
				 * in this item
				 */
				len = FUNC3(ih);
			else
				/* len = body len of item */
				len = FUNC4(ih);

			/*
			 * delete the part of the last item of the bh
			 * do not delete item header
			 */
			FUNC7(cur_bi, FUNC0(bh) - 1,
					     len - del_bytes, del_bytes);
		}
	}
}