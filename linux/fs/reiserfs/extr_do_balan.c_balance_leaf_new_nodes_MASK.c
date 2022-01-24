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
struct tree_balance {int* blknum; struct buffer_head** S_new; struct buffer_head** snum; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  DISK_LEAF_NODE_LEVEL ; 
 int /*<<< orphan*/  KEY_SIZE ; 
 int M_INSERT ; 
 int M_PASTE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,struct item_head* const,char const* const,struct item_head*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_balance*,struct item_head* const,char const* const,struct item_head*,struct buffer_head**,int) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct buffer_head* FUNC8 (struct tree_balance*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct item_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct tree_balance *tb,
				   struct item_head * const ih,
				   const char * const body,
				   struct item_head *insert_key,
				   struct buffer_head **insert_ptr,
				   int flag)
{
	int i;
	for (i = tb->blknum[0] - 2; i >= 0; i--) {
		FUNC0(flag != M_INSERT && flag != M_PASTE);

		FUNC2(!tb->snum[i],
		       "PAP-12200: snum[%d] == %d. Must be > 0", i,
		       tb->snum[i]);

		/* here we shift from S to S_new nodes */

		tb->S_new[i] = FUNC8(tb);

		/* initialized block type and tree level */
		FUNC11(FUNC1(tb->S_new[i]), DISK_LEAF_NODE_LEVEL);

		if (flag == M_INSERT)
			FUNC3(tb, ih, body, insert_key,
						      insert_ptr, i);
		else /* M_PASTE */
			FUNC4(tb, ih, body, insert_key,
						     insert_ptr, i);

		FUNC10(insert_key + i, FUNC9(tb->S_new[i], 0), KEY_SIZE);
		insert_ptr[i] = tb->S_new[i];

		FUNC2(!FUNC7(tb->S_new[i])
		       || FUNC6(tb->S_new[i])
		       || FUNC5(tb->S_new[i]),
		       "PAP-12247: S_new[%d] : (%b)",
		       i, tb->S_new[i]);
	}
}