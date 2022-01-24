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
struct ocfs2_group_desc {scalar_t__ bg_bitmap; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {scalar_t__ b_committed_data; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC5(struct buffer_head *bg_bh,
					 int nr)
{
	struct ocfs2_group_desc *bg = (struct ocfs2_group_desc *) bg_bh->b_data;
	int ret;

	if (FUNC4(nr, (unsigned long *)bg->bg_bitmap))
		return 0;

	if (!FUNC1(bg_bh))
		return 1;

	FUNC2(bg_bh);
	bg = (struct ocfs2_group_desc *) FUNC0(bg_bh)->b_committed_data;
	if (bg)
		ret = !FUNC4(nr, (unsigned long *)bg->bg_bitmap);
	else
		ret = 1;
	FUNC3(bg_bh);

	return ret;
}