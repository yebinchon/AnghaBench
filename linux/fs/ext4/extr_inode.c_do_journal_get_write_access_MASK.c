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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct buffer_head*) ; 

int FUNC7(handle_t *handle,
				struct buffer_head *bh)
{
	int dirty = FUNC1(bh);
	int ret;

	if (!FUNC3(bh) || FUNC2(bh))
		return 0;
	/*
	 * __block_write_begin() could have dirtied some buffers. Clean
	 * the dirty bit as jbd2_journal_get_write_access() could complain
	 * otherwise about fs integrity issues. Setting of the dirty bit
	 * by __block_write_begin() isn't a real problem here as we clear
	 * the bit before releasing a page lock and thus writeback cannot
	 * ever write the buffer.
	 */
	if (dirty)
		FUNC4(bh);
	FUNC0(bh, "get write access");
	ret = FUNC6(handle, bh);
	if (!ret && dirty)
		ret = FUNC5(handle, NULL, bh);
	return ret;
}