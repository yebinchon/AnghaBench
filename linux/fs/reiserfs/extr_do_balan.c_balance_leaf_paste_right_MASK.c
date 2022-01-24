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
struct tree_balance {int* rnum; int item_pos; int rbytes; int /*<<< orphan*/  tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_balance*,struct item_head* const,char const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,struct item_head* const,char const* const) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_balance*,int,int) ; 

__attribute__((used)) static void FUNC5(struct tree_balance *tb,
				     struct item_head * const ih,
				     const char * const body)
{
	struct buffer_head *tbS0 = FUNC1(tb->tb_path);
	int n = FUNC0(tbS0);

	/* new item doesn't fall into R[0] */
	if (n - tb->rnum[0] > tb->item_pos) {
		FUNC4(tb, tb->rnum[0], tb->rbytes);
		return;
	}

	/* pasted item or part of it falls to R[0] */

	if (tb->item_pos == n - tb->rnum[0] && tb->rbytes != -1)
		/* we must shift the part of the appended item */
		FUNC2(tb, ih, body);
	else
		/* pasted item in whole falls into R[0] */
		FUNC3(tb, ih, body);
}