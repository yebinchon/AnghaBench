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
struct tree_balance {scalar_t__ pos_in_item; int /*<<< orphan*/ * insert_size; int /*<<< orphan*/  tb_sb; int /*<<< orphan*/  zeroes_num; int /*<<< orphan*/  item_pos; int /*<<< orphan*/  tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_balance*,struct item_head* const,char const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,struct buffer_info*) ; 
 scalar_t__ FUNC4 (struct item_head*) ; 
 scalar_t__ FUNC5 (struct item_head*) ; 
 scalar_t__ FUNC6 (struct item_head*) ; 
 struct item_head* FUNC7 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_info*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct item_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct tree_balance *tb,
					   struct item_head * const ih,
					   const char * const body)
{
	struct buffer_head *tbS0 = FUNC0(tb->tb_path);
	struct buffer_info bi;
	struct item_head *pasted = FUNC7(tbS0, tb->item_pos);

	/* when directory, may be new entry already pasted */
	if (FUNC5(pasted)) {
		FUNC2(tb, ih, body);
		return;
	}

	/* regular object */

	if (tb->pos_in_item == FUNC4(pasted)) {
		FUNC1(tb->insert_size[0] <= 0,
		       "PAP-12275: insert size must not be %d",
		       tb->insert_size[0]);
		FUNC3(tb, &bi);
		FUNC8(&bi, tb->item_pos,
				     tb->pos_in_item, tb->insert_size[0], body,
				     tb->zeroes_num);

		if (FUNC6(pasted))
			FUNC11(pasted, 0);

		tb->insert_size[0] = 0;
	}
#ifdef CONFIG_REISERFS_CHECK
	else if (tb->insert_size[0]) {
		print_cur_tb("12285");
		reiserfs_panic(tb->tb_sb, "PAP-12285",
		    "insert_size must be 0 (%d)", tb->insert_size[0]);
	}
#endif
}