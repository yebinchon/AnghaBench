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
struct tree_balance {int* snum; int item_pos; int* sbytes; int /*<<< orphan*/ * S_new; int /*<<< orphan*/  tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  LEAF_FROM_S_TO_SNEW ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_balance*,struct item_head* const,char const* const,struct item_head*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,struct item_head* const,char const* const,struct item_head*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tree_balance*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tree_balance *tb,
					 struct item_head * const ih,
					 const char * const body,
					 struct item_head *insert_key,
					 struct buffer_head **insert_ptr,
					 int i)
{
	struct buffer_head *tbS0 = FUNC1(tb->tb_path);
	int n = FUNC0(tbS0);

	/* pasted item doesn't fall into S_new[i] */
	if (n - tb->snum[i] > tb->item_pos) {
		FUNC4(LEAF_FROM_S_TO_SNEW, tb,
				tb->snum[i], tb->sbytes[i], tb->S_new[i]);
		return;
	}

	/* pasted item or part if it falls to S_new[i] */

	if (tb->item_pos == n - tb->snum[i] && tb->sbytes[i] != -1)
		/* we must shift part of the appended item */
		FUNC2(tb, ih, body, insert_key,
						   insert_ptr, i);
	else
		/* item falls wholly into S_new[i] */
		FUNC3(tb, ih, body, insert_key,
						   insert_ptr, i);
}