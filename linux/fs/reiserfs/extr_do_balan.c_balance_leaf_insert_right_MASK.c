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
struct tree_balance {int* rnum; int item_pos; int rbytes; int zeroes_num; int* insert_size; int /*<<< orphan*/ * R; int /*<<< orphan*/ * rkey; int /*<<< orphan*/ * CFR; TYPE_1__* tb_sb; int /*<<< orphan*/  tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int loff_t ;
struct TYPE_2__ {int s_blocksize_bits; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ) ; 
 int UNFM_P_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct tree_balance*,struct buffer_info*) ; 
 int FUNC3 (struct item_head* const) ; 
 scalar_t__ FUNC4 (struct item_head* const) ; 
 int FUNC5 (struct item_head* const) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_info*,int,struct item_head* const,char const* const,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct item_head* const,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tree_balance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct item_head* const,int) ; 

__attribute__((used)) static void FUNC11(struct tree_balance *tb,
				      struct item_head * const ih,
				      const char * const body)
{

	struct buffer_head *tbS0 = FUNC1(tb->tb_path);
	int n = FUNC0(tbS0);
	struct buffer_info bi;

	/* new item or part of it doesn't fall into R[0] */
	if (n - tb->rnum[0] >= tb->item_pos) {
		FUNC7(tb, tb->rnum[0], tb->rbytes);
		return;
	}

	/* new item or its part falls to R[0] */

	/* part of new item falls into R[0] */
	if (tb->item_pos == n - tb->rnum[0] + 1 && tb->rbytes != -1) {
		loff_t old_key_comp, old_len, r_zeroes_number;
		const char *r_body;
		int shift;
		loff_t offset;

		FUNC7(tb, tb->rnum[0] - 1, -1);

		/* Remember key component and item length */
		old_key_comp = FUNC5(ih);
		old_len = FUNC3(ih);

		/*
		 * Calculate key component and item length to insert
		 * into R[0]
		 */
		shift = 0;
		if (FUNC4(ih))
			shift = tb->tb_sb->s_blocksize_bits - UNFM_P_SHIFT;
		offset = FUNC5(ih) + ((old_len - tb->rbytes) << shift);
		FUNC10(ih, offset);
		FUNC8(ih, tb->rbytes);

		/* Insert part of the item into R[0] */
		FUNC2(tb, &bi);
		if ((old_len - tb->rbytes) > tb->zeroes_num) {
			r_zeroes_number = 0;
			r_body = body + (old_len - tb->rbytes) - tb->zeroes_num;
		} else {
			r_body = body;
			r_zeroes_number = tb->zeroes_num -
					  (old_len - tb->rbytes);
			tb->zeroes_num -= r_zeroes_number;
		}

		FUNC6(&bi, 0, ih, r_body, r_zeroes_number);

		/* Replace right delimiting key by first key in R[0] */
		FUNC9(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);

		/*
		 * Calculate key component and item length to
		 * insert into S[0]
		 */
		FUNC10(ih, old_key_comp);
		FUNC8(ih, old_len - tb->rbytes);

		tb->insert_size[0] -= tb->rbytes;

	} else {
		/* whole new item falls into R[0] */

		/* Shift rnum[0]-1 items to R[0] */
		FUNC7(tb, tb->rnum[0] - 1, tb->rbytes);

		/* Insert new item into R[0] */
		FUNC2(tb, &bi);
		FUNC6(&bi, tb->item_pos - n + tb->rnum[0] - 1,
				     ih, body, tb->zeroes_num);

		if (tb->item_pos - n + tb->rnum[0] - 1 == 0)
			FUNC9(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);

		tb->zeroes_num = tb->insert_size[0] = 0;
	}
}