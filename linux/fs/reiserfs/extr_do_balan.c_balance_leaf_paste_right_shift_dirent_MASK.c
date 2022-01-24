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
struct tree_balance {int rbytes; int pos_in_item; int /*<<< orphan*/ * rnum; int /*<<< orphan*/ * insert_size; int /*<<< orphan*/ * R; int /*<<< orphan*/ * rkey; int /*<<< orphan*/ * CFR; int /*<<< orphan*/  zeroes_num; int /*<<< orphan*/  item_pos; int /*<<< orphan*/  tb_path; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int DEH_SIZE ; 
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_balance*,struct buffer_info*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_info*,int /*<<< orphan*/ ,int,int,struct reiserfs_de_head*,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_balance*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_balance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct tree_balance *tb,
				     struct item_head * const ih,
				     const char * const body)
{
	struct buffer_head *tbS0 = FUNC0(tb->tb_path);
	struct buffer_info bi;
	int entry_count;

	FUNC1(tb->zeroes_num,
	       "PAP-12145: invalid parameter in case of a directory");
	entry_count = FUNC3(FUNC4(tbS0, tb->item_pos));

	/* new directory entry falls into R[0] */
	if (entry_count - tb->rbytes < tb->pos_in_item) {
		int paste_entry_position;

		FUNC1(tb->rbytes - 1 >= entry_count || !tb->insert_size[0],
		       "PAP-12150: no enough of entries to shift to R[0]: "
		       "rbytes=%d, entry_count=%d", tb->rbytes, entry_count);

		/*
		 * Shift rnum[0]-1 items in whole.
		 * Shift rbytes-1 directory entries from directory
		 * item number rnum[0]
		 */
		FUNC7(tb, tb->rnum[0], tb->rbytes - 1);

		/* Paste given directory entry to directory item */
		paste_entry_position = tb->pos_in_item - entry_count +
				       tb->rbytes - 1;
		FUNC2(tb, &bi);
		FUNC6(&bi, 0, paste_entry_position,
				     tb->insert_size[0], body, tb->zeroes_num);

		/* paste entry */
		FUNC5(&bi, 0, paste_entry_position, 1,
				   (struct reiserfs_de_head *) body,
				   body + DEH_SIZE, tb->insert_size[0]);

		/* change delimiting keys */
		if (paste_entry_position == 0)
			FUNC8(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);

		tb->insert_size[0] = 0;
		tb->pos_in_item++;
	} else {
		/* new directory entry doesn't fall into R[0] */
		FUNC7(tb, tb->rnum[0], tb->rbytes);
	}
}