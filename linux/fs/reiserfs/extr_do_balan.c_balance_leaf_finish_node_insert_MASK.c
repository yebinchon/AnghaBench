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
struct tree_balance {int /*<<< orphan*/ * lkey; scalar_t__* CFL; int /*<<< orphan*/  item_pos; int /*<<< orphan*/  zeroes_num; int /*<<< orphan*/  tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_balance*,struct buffer_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_info*,int /*<<< orphan*/ ,struct item_head* const,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,scalar_t__,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tree_balance *tb,
					    struct item_head * const ih,
					    const char * const body)
{
	struct buffer_head *tbS0 = FUNC0(tb->tb_path);
	struct buffer_info bi;
	FUNC1(tb, &bi);
	FUNC2(&bi, tb->item_pos, ih, body, tb->zeroes_num);

	/* If we insert the first key change the delimiting key */
	if (tb->item_pos == 0) {
		if (tb->CFL[0])	/* can be 0 in reiserfsck */
			FUNC3(tb, tb->CFL[0], tb->lkey[0], tbS0, 0);

	}
}