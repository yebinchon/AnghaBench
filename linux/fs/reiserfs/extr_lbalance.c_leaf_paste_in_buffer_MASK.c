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
struct super_block {int dummy; } ;
struct item_head {int dummy; } ;
struct disk_child {int dummy; } ;
struct buffer_info {scalar_t__ bi_parent; TYPE_1__* tb; int /*<<< orphan*/  bi_position; struct buffer_head* bi_bh; } ;
struct buffer_head {int b_size; int b_data; } ;
struct block_head {int dummy; } ;
struct TYPE_3__ {struct super_block* tb_sb; } ;

/* Variables and functions */
 struct block_head* FUNC0 (struct buffer_head*) ; 
 struct disk_child* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int FUNC3 (struct block_head*) ; 
 int FUNC4 (struct block_head*) ; 
 scalar_t__ FUNC5 (struct disk_child*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct item_head*) ; 
 int FUNC9 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct item_head*) ; 
 struct item_head* FUNC11 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct disk_child*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct block_head*,int) ; 

void FUNC21(struct buffer_info *bi, int affected_item_num,
			  int pos_in_item, int paste_size,
			  const char *body, int zeros_number)
{
	struct buffer_head *bh = bi->bi_bh;
	int nr, free_space;
	struct block_head *blkh;
	struct item_head *ih;
	int i;
	int last_loc, unmoved_loc;

	blkh = FUNC0(bh);
	nr = FUNC4(blkh);
	free_space = FUNC3(blkh);

	/* check free space */
	FUNC2(free_space < paste_size,
	       "vs-10175: not enough free space: needed %d, available %d",
	       paste_size, free_space);

#ifdef CONFIG_REISERFS_CHECK
	if (zeros_number > paste_size) {
		struct super_block *sb = NULL;
		if (bi && bi->tb)
			sb = bi->tb->tb_sb;
		print_cur_tb("10177");
		reiserfs_panic(sb, "vs-10177",
			       "zeros_number == %d, paste_size == %d",
			       zeros_number, paste_size);
	}
#endif				/* CONFIG_REISERFS_CHECK */

	/* item to be appended */
	ih = FUNC11(bh, affected_item_num);

	last_loc = FUNC9(&ih[nr - affected_item_num - 1]);
	unmoved_loc = affected_item_num ? FUNC9(ih - 1) : bh->b_size;

	/* prepare space */
	FUNC13(bh->b_data + last_loc - paste_size, bh->b_data + last_loc,
		unmoved_loc - last_loc);

	/* change locations */
	for (i = affected_item_num; i < nr; i++)
		FUNC18(&ih[i - affected_item_num],
				FUNC9(&ih[i - affected_item_num]) -
				paste_size);

	if (body) {
		if (!FUNC10(ih)) {
			if (!pos_in_item) {
				/* shift data to right */
				FUNC13(bh->b_data + FUNC9(ih) +
					paste_size,
					bh->b_data + FUNC9(ih),
					FUNC8(ih));
				/* paste data in the head of item */
				FUNC14(bh->b_data + FUNC9(ih), 0,
				       zeros_number);
				FUNC12(bh->b_data + FUNC9(ih) +
				       zeros_number, body,
				       paste_size - zeros_number);
			} else {
				FUNC14(bh->b_data + unmoved_loc - paste_size, 0,
				       zeros_number);
				FUNC12(bh->b_data + unmoved_loc - paste_size +
				       zeros_number, body,
				       paste_size - zeros_number);
			}
		}
	} else
		FUNC14(bh->b_data + unmoved_loc - paste_size, '\0', paste_size);

	FUNC17(ih, FUNC8(ih) + paste_size);

	/* change free space */
	FUNC20(blkh, free_space - paste_size);

	FUNC7(bi->tb, bh, 0);

	if (bi->bi_parent) {
		struct disk_child *t_dc =
		    FUNC1(bi->bi_parent, bi->bi_position);
		FUNC16(t_dc, FUNC5(t_dc) + paste_size);
		FUNC6(bi->tb, bi->bi_parent, 0);
	}
}