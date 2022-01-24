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
struct tree_balance {int item_pos; int /*<<< orphan*/  zeroes_num; int /*<<< orphan*/ * insert_size; int /*<<< orphan*/  pos_in_item; int /*<<< orphan*/ * L; int /*<<< orphan*/  lbytes; int /*<<< orphan*/ * lnum; int /*<<< orphan*/  tb_path; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DEH_SIZE ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_balance*,struct buffer_info*) ; 
 scalar_t__ FUNC3 (struct item_head*) ; 
 scalar_t__ FUNC4 (struct item_head*) ; 
 scalar_t__ FUNC5 (struct item_head*) ; 
 scalar_t__ FUNC6 (struct item_head*) ; 
 struct item_head* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_info*,int,int /*<<< orphan*/ ,int,struct reiserfs_de_head*,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct tree_balance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct item_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct tree_balance *tb,
					  struct item_head * const ih,
					  const char * const body)
{
	struct buffer_head *tbS0 = FUNC1(tb->tb_path);
	int n = FUNC0(tb->L[0]);
	struct buffer_info bi;
	struct item_head *pasted;
	int ret;

	/* if we paste into first item of S[0] and it is left mergable */
	if (!tb->item_pos &&
	    FUNC12(FUNC8(tbS0, 0), tbS0->b_size)) {
		/*
		 * then increment pos_in_item by the size of the
		 * last item in L[0]
		 */
		pasted = FUNC7(tb->L[0], n - 1);
		if (FUNC5(pasted))
			tb->pos_in_item += FUNC3(pasted);
		else
			tb->pos_in_item += FUNC4(pasted);
	}

	/*
	 * Shift lnum[0] - 1 items in whole.
	 * Shift lbytes - 1 byte from item number lnum[0]
	 */
	ret = FUNC11(tb, tb->lnum[0], tb->lbytes);

	/* Append to body of item in L[0] */
	FUNC2(tb, &bi);
	FUNC10(&bi, n + tb->item_pos - ret, tb->pos_in_item,
			     tb->insert_size[0], body, tb->zeroes_num);

	/* if appended item is directory, paste entry */
	pasted = FUNC7(tb->L[0], n + tb->item_pos - ret);
	if (FUNC5(pasted))
		FUNC9(&bi, n + tb->item_pos - ret,
				   tb->pos_in_item, 1,
				   (struct reiserfs_de_head *)body,
				   body + DEH_SIZE, tb->insert_size[0]);

	/*
	 * if appended item is indirect item, put unformatted node
	 * into un list
	 */
	if (FUNC6(pasted))
		FUNC13(pasted, 0);

	tb->insert_size[0] = 0;
	tb->zeroes_num = 0;
}