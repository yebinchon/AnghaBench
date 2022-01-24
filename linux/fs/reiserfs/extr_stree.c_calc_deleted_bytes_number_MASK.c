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
struct tree_balance {int* insert_size; int /*<<< orphan*/  tb_path; } ;
struct item_head {int dummy; } ;
struct TYPE_2__ {int b_size; } ;

/* Variables and functions */
 char M_DELETE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int UNFM_P_SIZE ; 
 int FUNC1 (struct item_head*) ; 
 scalar_t__ FUNC2 (struct item_head*) ; 
 scalar_t__ FUNC3 (struct item_head*) ; 
 scalar_t__ FUNC4 (struct item_head*) ; 
 struct item_head* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tree_balance *tb, char mode)
{
	int del_size;
	struct item_head *p_le_ih = FUNC5(tb->tb_path);

	if (FUNC4(p_le_ih))
		return 0;

	del_size =
	    (mode ==
	     M_DELETE) ? FUNC1(p_le_ih) : -tb->insert_size[0];
	if (FUNC2(p_le_ih)) {
		/*
		 * return EMPTY_DIR_SIZE; We delete emty directories only.
		 * we can't use EMPTY_DIR_SIZE, as old format dirs have a
		 * different empty size.  ick. FIXME, is this right?
		 */
		return del_size;
	}

	if (FUNC3(p_le_ih))
		del_size = (del_size / UNFM_P_SIZE) *
				(FUNC0(tb->tb_path)->b_size);
	return del_size;
}