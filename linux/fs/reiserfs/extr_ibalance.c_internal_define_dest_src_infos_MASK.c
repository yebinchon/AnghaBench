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
struct tree_balance {int* lkey; int* rkey; int /*<<< orphan*/  tb_sb; void** FR; void** R; int /*<<< orphan*/  tb_path; void** FL; void** L; struct buffer_head** CFR; struct buffer_head** CFL; } ;
struct buffer_info {void* bi_position; void* bi_parent; void* bi_bh; struct tree_balance* tb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
#define  INTERNAL_INSERT_TO_L 134 
#define  INTERNAL_INSERT_TO_R 133 
#define  INTERNAL_INSERT_TO_S 132 
#define  INTERNAL_SHIFT_FROM_L_TO_S 131 
#define  INTERNAL_SHIFT_FROM_R_TO_S 130 
#define  INTERNAL_SHIFT_FROM_S_TO_L 129 
#define  INTERNAL_SHIFT_FROM_S_TO_R 128 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct tree_balance*,int) ; 
 void* FUNC4 (struct tree_balance*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static void FUNC7(int shift_mode,
					   struct tree_balance *tb,
					   int h,
					   struct buffer_info *dest_bi,
					   struct buffer_info *src_bi,
					   int *d_key, struct buffer_head **cf)
{
	FUNC5(dest_bi, 0, sizeof(struct buffer_info));
	FUNC5(src_bi, 0, sizeof(struct buffer_info));
	/* define dest, src, dest parent, dest position */
	switch (shift_mode) {

	/* used in internal_shift_left */
	case INTERNAL_SHIFT_FROM_S_TO_L:
		src_bi->tb = tb;
		src_bi->bi_bh = FUNC0(tb->tb_path, h);
		src_bi->bi_parent = FUNC2(tb->tb_path, h);
		src_bi->bi_position = FUNC1(tb->tb_path, h + 1);
		dest_bi->tb = tb;
		dest_bi->bi_bh = tb->L[h];
		dest_bi->bi_parent = tb->FL[h];
		dest_bi->bi_position = FUNC3(tb, h);
		*d_key = tb->lkey[h];
		*cf = tb->CFL[h];
		break;
	case INTERNAL_SHIFT_FROM_L_TO_S:
		src_bi->tb = tb;
		src_bi->bi_bh = tb->L[h];
		src_bi->bi_parent = tb->FL[h];
		src_bi->bi_position = FUNC3(tb, h);
		dest_bi->tb = tb;
		dest_bi->bi_bh = FUNC0(tb->tb_path, h);
		dest_bi->bi_parent = FUNC2(tb->tb_path, h);
		/* dest position is analog of dest->b_item_order */
		dest_bi->bi_position = FUNC1(tb->tb_path, h + 1);
		*d_key = tb->lkey[h];
		*cf = tb->CFL[h];
		break;

	/* used in internal_shift_left */
	case INTERNAL_SHIFT_FROM_R_TO_S:
		src_bi->tb = tb;
		src_bi->bi_bh = tb->R[h];
		src_bi->bi_parent = tb->FR[h];
		src_bi->bi_position = FUNC4(tb, h);
		dest_bi->tb = tb;
		dest_bi->bi_bh = FUNC0(tb->tb_path, h);
		dest_bi->bi_parent = FUNC2(tb->tb_path, h);
		dest_bi->bi_position = FUNC1(tb->tb_path, h + 1);
		*d_key = tb->rkey[h];
		*cf = tb->CFR[h];
		break;

	case INTERNAL_SHIFT_FROM_S_TO_R:
		src_bi->tb = tb;
		src_bi->bi_bh = FUNC0(tb->tb_path, h);
		src_bi->bi_parent = FUNC2(tb->tb_path, h);
		src_bi->bi_position = FUNC1(tb->tb_path, h + 1);
		dest_bi->tb = tb;
		dest_bi->bi_bh = tb->R[h];
		dest_bi->bi_parent = tb->FR[h];
		dest_bi->bi_position = FUNC4(tb, h);
		*d_key = tb->rkey[h];
		*cf = tb->CFR[h];
		break;

	case INTERNAL_INSERT_TO_L:
		dest_bi->tb = tb;
		dest_bi->bi_bh = tb->L[h];
		dest_bi->bi_parent = tb->FL[h];
		dest_bi->bi_position = FUNC3(tb, h);
		break;

	case INTERNAL_INSERT_TO_S:
		dest_bi->tb = tb;
		dest_bi->bi_bh = FUNC0(tb->tb_path, h);
		dest_bi->bi_parent = FUNC2(tb->tb_path, h);
		dest_bi->bi_position = FUNC1(tb->tb_path, h + 1);
		break;

	case INTERNAL_INSERT_TO_R:
		dest_bi->tb = tb;
		dest_bi->bi_bh = tb->R[h];
		dest_bi->bi_parent = tb->FR[h];
		dest_bi->bi_position = FUNC4(tb, h);
		break;

	default:
		FUNC6(tb->tb_sb, "ibalance-1",
			       "shift type is unknown (%d)",
			       shift_mode);
	}
}