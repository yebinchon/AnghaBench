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
struct buffer_head {int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_count; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

int FUNC9(struct buffer_head *bh, int op_flags)
{
	int ret = 0;

	FUNC0(FUNC1(&bh->b_count) < 1);
	FUNC4(bh);
	if (FUNC6(bh)) {
		FUNC3(bh);
		bh->b_end_io = end_buffer_write_sync;
		ret = FUNC5(REQ_OP_WRITE, op_flags, bh);
		FUNC8(bh);
		if (!ret && !FUNC2(bh))
			ret = -EIO;
	} else {
		FUNC7(bh);
	}
	return ret;
}