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
struct tree_balance {int* rnum; scalar_t__ pos_in_item; int item_pos; int /*<<< orphan*/ * insert_size; int /*<<< orphan*/  zeroes_num; int /*<<< orphan*/ * R; int /*<<< orphan*/ * rkey; int /*<<< orphan*/ * CFR; int /*<<< orphan*/  rbytes; int /*<<< orphan*/  tb_path; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int DEH_SIZE ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,struct buffer_info*) ; 
 scalar_t__ FUNC4 (struct item_head*) ; 
 scalar_t__ FUNC5 (struct item_head*) ; 
 struct item_head* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_info*,int,scalar_t__,int,struct reiserfs_de_head*,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_info*,int,scalar_t__,int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tree_balance*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tree_balance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct item_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct tree_balance *tb,
				     struct item_head * const ih,
				     const char * const body)
{
	struct buffer_head *tbS0 = FUNC1(tb->tb_path);
	int n = FUNC0(tbS0);
	struct item_head *pasted;
	struct buffer_info bi;

							FUNC3(tb, &bi);
	FUNC9(tb, tb->rnum[0], tb->rbytes);

	/* append item in R[0] */
	if (tb->pos_in_item >= 0) {
		FUNC3(tb, &bi);
		FUNC8(&bi, tb->item_pos - n + tb->rnum[0],
				     tb->pos_in_item, tb->insert_size[0], body,
				     tb->zeroes_num);
	}

	/* paste new entry, if item is directory item */
	pasted = FUNC6(tb->R[0], tb->item_pos - n + tb->rnum[0]);
	if (FUNC4(pasted) && tb->pos_in_item >= 0) {
		FUNC7(&bi, tb->item_pos - n + tb->rnum[0],
				   tb->pos_in_item, 1,
				   (struct reiserfs_de_head *)body,
				   body + DEH_SIZE, tb->insert_size[0]);

		if (!tb->pos_in_item) {

			FUNC2(tb->item_pos - n + tb->rnum[0],
			       "PAP-12165: directory item must be first "
			       "item of node when pasting is in 0th position");

			/* update delimiting keys */
			FUNC10(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);
		}
	}

	if (FUNC5(pasted))
		FUNC11(pasted, 0);
	tb->zeroes_num = tb->insert_size[0] = 0;
}