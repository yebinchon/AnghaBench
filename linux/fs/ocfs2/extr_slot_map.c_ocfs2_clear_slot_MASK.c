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
struct ocfs2_super {struct ocfs2_slot_info* slot_info; int /*<<< orphan*/  osb_lock; } ;
struct ocfs2_slot_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_slot_info*,int) ; 
 int FUNC1 (struct ocfs2_super*,struct ocfs2_slot_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ocfs2_super *osb, int slot_num)
{
	struct ocfs2_slot_info *si = osb->slot_info;

	if (si == NULL)
		return 0;

	FUNC2(&osb->osb_lock);
	FUNC0(si, slot_num);
	FUNC3(&osb->osb_lock);

	return FUNC1(osb, osb->slot_info, slot_num);
}