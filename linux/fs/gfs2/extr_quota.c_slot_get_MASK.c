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
struct gfs2_sbd {unsigned int sd_quota_slots; int /*<<< orphan*/  sd_bitmap_lock; int /*<<< orphan*/  sd_quota_bitmap; } ;
struct gfs2_quota_data {scalar_t__ qd_slot_count; unsigned int qd_slot; struct gfs2_sbd* qd_sbd; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gfs2_quota_data *qd)
{
	struct gfs2_sbd *sdp = qd->qd_sbd;
	unsigned int bit;
	int error = 0;

	FUNC2(&sdp->sd_bitmap_lock);
	if (qd->qd_slot_count != 0)
		goto out;

	error = -ENOSPC;
	bit = FUNC0(sdp->sd_quota_bitmap, sdp->sd_quota_slots);
	if (bit < sdp->sd_quota_slots) {
		FUNC1(bit, sdp->sd_quota_bitmap);
		qd->qd_slot = bit;
		error = 0;
out:
		qd->qd_slot_count++;
	}
	FUNC3(&sdp->sd_bitmap_lock);

	return error;
}