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
struct buffer_head {int /*<<< orphan*/  b_end_io; } ;

/* Variables and functions */
 int WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

void FUNC6(int op, int op_flags,  int nr, struct buffer_head *bhs[])
{
	int i;

	for (i = 0; i < nr; i++) {
		struct buffer_head *bh = bhs[i];

		if (!FUNC4(bh))
			continue;
		if (op == WRITE) {
			if (FUNC3(bh)) {
				bh->b_end_io = end_buffer_write_sync;
				FUNC1(bh);
				FUNC2(op, op_flags, bh);
				continue;
			}
		} else {
			if (!FUNC0(bh)) {
				bh->b_end_io = end_buffer_read_sync;
				FUNC1(bh);
				FUNC2(op, op_flags, bh);
				continue;
			}
		}
		FUNC5(bh);
	}
}