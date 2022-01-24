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
struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int dummy; } ;
struct mpage_data {int /*<<< orphan*/ * bio; int /*<<< orphan*/  use_writepage; int /*<<< orphan*/  get_block; int /*<<< orphan*/  last_block_in_bio; } ;
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_SYNC ; 
 scalar_t__ WB_SYNC_ALL ; 
 int FUNC0 (struct page*,struct writeback_control*,struct mpage_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct page *page, get_block_t get_block,
	struct writeback_control *wbc)
{
	struct mpage_data mpd = {
		.bio = NULL,
		.last_block_in_bio = 0,
		.get_block = get_block,
		.use_writepage = 0,
	};
	int ret = FUNC0(page, wbc, &mpd);
	if (mpd.bio) {
		int op_flags = (wbc->sync_mode == WB_SYNC_ALL ?
			  REQ_SYNC : 0);
		FUNC1(REQ_OP_WRITE, op_flags, mpd.bio);
	}
	return ret;
}