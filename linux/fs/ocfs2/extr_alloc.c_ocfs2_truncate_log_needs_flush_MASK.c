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
struct ocfs2_truncate_log {int /*<<< orphan*/  tl_count; int /*<<< orphan*/  tl_used; } ;
struct ocfs2_super {int /*<<< orphan*/  slot_num; struct buffer_head* osb_tl_bh; } ;
struct TYPE_2__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

int FUNC2(struct ocfs2_super *osb)
{
	struct buffer_head *tl_bh = osb->osb_tl_bh;
	struct ocfs2_dinode *di;
	struct ocfs2_truncate_log *tl;

	di = (struct ocfs2_dinode *) tl_bh->b_data;
	tl = &di->id2.i_dealloc;

	FUNC1(FUNC0(tl->tl_used) > FUNC0(tl->tl_count),
			"slot %d, invalid truncate log parameters: used = "
			"%u, count = %u\n", osb->slot_num,
			FUNC0(tl->tl_used), FUNC0(tl->tl_count));
	return FUNC0(tl->tl_used) == FUNC0(tl->tl_count);
}