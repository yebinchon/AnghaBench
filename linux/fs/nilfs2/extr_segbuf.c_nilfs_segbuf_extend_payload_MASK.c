#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ nblocks; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; scalar_t__ sb_pseg_start; int /*<<< orphan*/  sb_super; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct nilfs_segment_buffer*,struct buffer_head*) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct nilfs_segment_buffer *segbuf,
				struct buffer_head **bhp)
{
	struct buffer_head *bh;

	bh = FUNC1(segbuf->sb_super,
		       segbuf->sb_pseg_start + segbuf->sb_sum.nblocks);
	if (FUNC2(!bh))
		return -ENOMEM;

	FUNC0(segbuf, bh);
	*bhp = bh;
	return 0;
}