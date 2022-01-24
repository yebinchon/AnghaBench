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
typedef  scalar_t__ u32 ;
struct ocfs2_orphan_scan {scalar_t__ os_seqno; int /*<<< orphan*/  os_state; int /*<<< orphan*/  os_count; int /*<<< orphan*/  os_scantime; } ;
struct ocfs2_super {int max_slots; int /*<<< orphan*/  journal; struct ocfs2_orphan_scan osb_orphan_scan; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  ORPHAN_NO_NEED_TRUNCATE ; 
 scalar_t__ ORPHAN_SCAN_INACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ocfs2_super*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct ocfs2_super *osb)
{
	struct ocfs2_orphan_scan *os;
	int status, i;
	u32 seqno = 0;

	os = &osb->osb_orphan_scan;

	if (FUNC0(&os->os_state) == ORPHAN_SCAN_INACTIVE)
		goto out;

	FUNC6(os->os_count, os->os_seqno,
					    FUNC0(&os->os_state));

	status = FUNC3(osb, &seqno);
	if (status < 0) {
		if (status != -EAGAIN)
			FUNC2(status);
		goto out;
	}

	/* Do no queue the tasks if the volume is being umounted */
	if (FUNC0(&os->os_state) == ORPHAN_SCAN_INACTIVE)
		goto unlock;

	if (os->os_seqno != seqno) {
		os->os_seqno = seqno;
		goto unlock;
	}

	for (i = 0; i < osb->max_slots; i++)
		FUNC5(osb->journal, i, NULL, NULL,
						NULL, ORPHAN_NO_NEED_TRUNCATE);
	/*
	 * We queued a recovery on orphan slots, increment the sequence
	 * number and update LVB so other node will skip the scan for a while
	 */
	seqno++;
	os->os_count++;
	os->os_scantime = FUNC1();
unlock:
	FUNC4(osb, seqno);
out:
	FUNC7(os->os_count, os->os_seqno,
					  FUNC0(&os->os_state));
	return;
}