#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree_balance {int* insert_size; int /*<<< orphan*/ * lkey; scalar_t__* CFL; TYPE_1__* tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int pos_in_item; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 struct buffer_head* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,struct buffer_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct item_head*) ; 
 scalar_t__ FUNC5 (struct item_head*) ; 
 struct item_head* FUNC6 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_balance*,scalar_t__,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct tree_balance *tb)
{
	struct buffer_head *tbS0 = FUNC1(tb->tb_path);
	int item_pos = FUNC0(tb->tb_path);
	struct item_head *ih = FUNC6(tbS0, item_pos);
	int pos_in_item = tb->tb_path->pos_in_item;
	struct buffer_info bi;
	FUNC3(tb, &bi);

	if (FUNC5(ih)) {
		/*
		 * UFS unlink semantics are such that you can only
		 * delete one directory entry at a time.
		 *
		 * when we cut a directory tb->insert_size[0] means
		 * number of entries to be cut (always 1)
		 */
		tb->insert_size[0] = -1;
		FUNC7(&bi, item_pos, pos_in_item,
				     -tb->insert_size[0]);

		FUNC2(!item_pos && !pos_in_item && !tb->CFL[0],
		       "PAP-12030: can not change delimiting key. CFL[0]=%p",
		       tb->CFL[0]);

		if (!item_pos && !pos_in_item && tb->CFL[0])
			FUNC8(tb, tb->CFL[0], tb->lkey[0], tbS0, 0);
	} else {
		FUNC7(&bi, item_pos, pos_in_item,
				     -tb->insert_size[0]);

		FUNC2(!FUNC4(ih),
		       "PAP-12035: cut must leave non-zero dynamic "
		       "length of item");
	}
}