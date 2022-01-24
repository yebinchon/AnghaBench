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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FIRST_TO_LAST ; 
 int FUNC1 (struct buffer_info*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct tree_balance*,struct buffer_info*,struct buffer_info*,int*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_info*,int,int,int,int) ; 

int FUNC4(int shift_mode, struct tree_balance *tb, int mov_num,
		    int mov_bytes, struct buffer_head *Snew)
{
	int ret_value;
	struct buffer_info dest_bi, src_bi;
	int first_last;

	FUNC2(shift_mode, tb, &dest_bi, &src_bi,
				   &first_last, Snew);

	ret_value =
	    FUNC1(&dest_bi, src_bi.bi_bh, first_last, mov_num,
			    mov_bytes);

	FUNC3(&src_bi, first_last,
			  (first_last ==
			   FIRST_TO_LAST) ? 0 : (FUNC0(src_bi.bi_bh) -
						 mov_num), mov_num, mov_bytes);

	return ret_value;
}