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
struct ocfs2_orphan_scan {int /*<<< orphan*/  os_orphan_scan_work; int /*<<< orphan*/  os_state; int /*<<< orphan*/  os_scantime; } ;
struct ocfs2_super {int /*<<< orphan*/  ocfs2_wq; struct ocfs2_orphan_scan osb_orphan_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  ORPHAN_SCAN_ACTIVE ; 
 int /*<<< orphan*/  ORPHAN_SCAN_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct ocfs2_super*) ; 
 scalar_t__ FUNC3 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct ocfs2_super *osb)
{
	struct ocfs2_orphan_scan *os;

	os = &osb->osb_orphan_scan;
	os->os_scantime = FUNC1();
	if (FUNC2(osb) || FUNC3(osb))
		FUNC0(&os->os_state, ORPHAN_SCAN_INACTIVE);
	else {
		FUNC0(&os->os_state, ORPHAN_SCAN_ACTIVE);
		FUNC5(osb->ocfs2_wq, &os->os_orphan_scan_work,
				   FUNC4());
	}
}