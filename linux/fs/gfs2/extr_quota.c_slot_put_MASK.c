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
struct gfs2_sbd {int /*<<< orphan*/  sd_bitmap_lock; int /*<<< orphan*/  sd_quota_bitmap; } ;
struct gfs2_quota_data {int qd_slot; int /*<<< orphan*/  qd_slot_count; struct gfs2_sbd* qd_sbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gfs2_quota_data *qd)
{
	struct gfs2_sbd *sdp = qd->qd_sbd;

	FUNC2(&sdp->sd_bitmap_lock);
	FUNC1(sdp, qd->qd_slot_count);
	if (!--qd->qd_slot_count) {
		FUNC0(!FUNC4(qd->qd_slot, sdp->sd_quota_bitmap));
		qd->qd_slot = -1;
	}
	FUNC3(&sdp->sd_bitmap_lock);
}