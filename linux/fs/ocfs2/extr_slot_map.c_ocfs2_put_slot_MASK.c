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
struct ocfs2_super {int slot_num; int /*<<< orphan*/  osb_lock; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {int dummy; } ;

/* Variables and functions */
 int OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_slot_info*,int) ; 
 int FUNC3 (struct ocfs2_super*,struct ocfs2_slot_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_slot_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ocfs2_super *osb)
{
	int status, slot_num;
	struct ocfs2_slot_info *si = osb->slot_info;

	if (!si)
		return;

	FUNC5(&osb->osb_lock);
	FUNC4(si);

	slot_num = osb->slot_num;
	FUNC2(si, osb->slot_num);
	osb->slot_num = OCFS2_INVALID_SLOT;
	FUNC6(&osb->osb_lock);

	status = FUNC3(osb, si, slot_num);
	if (status < 0)
		FUNC0(status);

	FUNC1(osb);
}