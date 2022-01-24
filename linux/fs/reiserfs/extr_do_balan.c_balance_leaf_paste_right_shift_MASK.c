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
struct tree_balance {int rbytes; int* insert_size; scalar_t__ pos_in_item; int zeroes_num; struct buffer_head** R; int /*<<< orphan*/ * CFR; int /*<<< orphan*/ * rkey; TYPE_1__* tb_sb; int /*<<< orphan*/ * rnum; int /*<<< orphan*/  item_pos; int /*<<< orphan*/  tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_blocksize_bits; } ;

/* Variables and functions */
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,scalar_t__) ; 
 int UNFM_P_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,struct item_head* const,char const* const) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_balance*,struct buffer_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct tree_balance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_info*,int /*<<< orphan*/ ,int,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct tree_balance*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct tree_balance *tb,
				     struct item_head * const ih,
				     const char * const body)
{
	struct buffer_head *tbS0 = FUNC0(tb->tb_path);
	int n_shift, n_rem, r_zeroes_number, version;
	unsigned long temp_rem;
	const char *r_body;
	struct buffer_info bi;

	/* we append to directory item */
	if (FUNC9(FUNC12(tbS0, tb->item_pos))) {
		FUNC3(tb, ih, body);
		return;
	}

	/* regular object */

	/*
	 * Calculate number of bytes which must be shifted
	 * from appended item
	 */
	n_shift = tb->rbytes - tb->insert_size[0];
	if (n_shift < 0)
		n_shift = 0;

	FUNC1(tb->pos_in_item != FUNC6(FUNC12(tbS0, tb->item_pos)),
	       "PAP-12155: invalid position to paste. ih_item_len=%d, "
	       "pos_in_item=%d", tb->pos_in_item,
	       FUNC6(FUNC12(tbS0, tb->item_pos)));

	FUNC15(tb, tb->rnum[0], n_shift);

	/*
	 * Calculate number of bytes which must remain in body
	 * after appending to R[0]
	 */
	n_rem = tb->insert_size[0] - tb->rbytes;
	if (n_rem < 0)
		n_rem = 0;

	temp_rem = n_rem;

	version = FUNC7(FUNC12(tb->R[0], 0));

	if (FUNC11(version, FUNC13(tb->R[0], 0))) {
		int shift = tb->tb_sb->s_blocksize_bits - UNFM_P_SHIFT;
		temp_rem = n_rem << shift;
	}

	FUNC2(version, FUNC13(tb->R[0], 0), temp_rem);
	FUNC2(version, FUNC8(tb->CFR[0], tb->rkey[0]),
			    temp_rem);

	FUNC5(tb, tb->CFR[0], 0);

	/* Append part of body into R[0] */
	FUNC4(tb, &bi);
	if (n_rem > tb->zeroes_num) {
		r_zeroes_number = 0;
		r_body = body + n_rem - tb->zeroes_num;
	} else {
		r_body = body;
		r_zeroes_number = tb->zeroes_num - n_rem;
		tb->zeroes_num -= r_zeroes_number;
	}

	FUNC14(&bi, 0, n_shift, tb->insert_size[0] - n_rem,
			     r_body, r_zeroes_number);

	if (FUNC10(FUNC12(tb->R[0], 0)))
		FUNC16(FUNC12(tb->R[0], 0), 0);

	tb->insert_size[0] = n_rem;
	if (!n_rem)
		tb->pos_in_item++;
}