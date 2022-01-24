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
typedef  int u64 ;
struct dirty_throttle_control {int wb_thresh; int bg_thresh; unsigned long wb_dirty; scalar_t__ thresh; int /*<<< orphan*/  wb_bg_thresh; struct bdi_writeback* wb; } ;
struct bdi_writeback {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WB_RECLAIMABLE ; 
 int /*<<< orphan*/  WB_WRITEBACK ; 
 int FUNC0 (struct dirty_throttle_control*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 unsigned long FUNC2 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 unsigned long FUNC4 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct dirty_throttle_control *dtc)
{
	struct bdi_writeback *wb = dtc->wb;
	unsigned long wb_reclaimable;

	/*
	 * wb_thresh is not treated as some limiting factor as
	 * dirty_thresh, due to reasons
	 * - in JBOD setup, wb_thresh can fluctuate a lot
	 * - in a system with HDD and USB key, the USB key may somehow
	 *   go into state (wb_dirty >> wb_thresh) either because
	 *   wb_dirty starts high, or because wb_thresh drops low.
	 *   In this case we don't want to hard throttle the USB key
	 *   dirtiers for 100 seconds until wb_dirty drops under
	 *   wb_thresh. Instead the auxiliary wb control line in
	 *   wb_position_ratio() will let the dirtier task progress
	 *   at some rate <= (write_bw / 2) for bringing down wb_dirty.
	 */
	dtc->wb_thresh = FUNC0(dtc);
	dtc->wb_bg_thresh = dtc->thresh ?
		FUNC1((u64)dtc->wb_thresh * dtc->bg_thresh, dtc->thresh) : 0;

	/*
	 * In order to avoid the stacked BDI deadlock we need
	 * to ensure we accurately count the 'dirty' pages when
	 * the threshold is low.
	 *
	 * Otherwise it would be possible to get thresh+n pages
	 * reported dirty, even though there are thresh-m pages
	 * actually dirty; with m+n sitting in the percpu
	 * deltas.
	 */
	if (dtc->wb_thresh < 2 * FUNC3()) {
		wb_reclaimable = FUNC4(wb, WB_RECLAIMABLE);
		dtc->wb_dirty = wb_reclaimable + FUNC4(wb, WB_WRITEBACK);
	} else {
		wb_reclaimable = FUNC2(wb, WB_RECLAIMABLE);
		dtc->wb_dirty = wb_reclaimable + FUNC2(wb, WB_WRITEBACK);
	}
}