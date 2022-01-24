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
struct tree_balance {int dummy; } ;
struct buffer_info {int /*<<< orphan*/  bi_bh; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIRST_TO_LAST ; 
 int /*<<< orphan*/  INTERNAL_SHIFT_FROM_S_TO_L ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tree_balance*,int,struct buffer_info*,struct buffer_info*,int*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_info*,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_info*,struct buffer_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct tree_balance *tb,
				 int h, int pointer_amount)
{
	struct buffer_info dest_bi, src_bi;
	struct buffer_head *cf;
	int d_key_position;

	FUNC1(INTERNAL_SHIFT_FROM_S_TO_L, tb, h,
				       &dest_bi, &src_bi, &d_key_position, &cf);

	/* insert lkey[h]-th key  from CFL[h] to left neighbor L[h] */
	if (pointer_amount > 0)
		FUNC2(&dest_bi, FUNC0(dest_bi.bi_bh), cf,
				    d_key_position);

	/* last parameter is del_parameter */
	FUNC3(&dest_bi, &src_bi, FIRST_TO_LAST,
				     pointer_amount, 1);
}