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
struct dirty_throttle_control {scalar_t__ dirty; scalar_t__ bg_thresh; int /*<<< orphan*/  wb; int /*<<< orphan*/  avail; int /*<<< orphan*/  member_0; } ;
struct bdi_writeback {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bdi_writeback*) ; 
 int /*<<< orphan*/  FUNC1 (struct bdi_writeback*,struct dirty_throttle_control*) ; 
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_UNSTABLE_NFS ; 
 int /*<<< orphan*/  WB_RECLAIMABLE ; 
 int /*<<< orphan*/  FUNC2 (struct dirty_throttle_control* const) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dirty_throttle_control* const,unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (struct dirty_throttle_control*) ; 
 int /*<<< orphan*/  FUNC7 (struct bdi_writeback*,unsigned long*,unsigned long*,scalar_t__*,unsigned long*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 

bool FUNC10(struct bdi_writeback *wb)
{
	struct dirty_throttle_control gdtc_stor = { FUNC0(wb) };
	struct dirty_throttle_control mdtc_stor = { FUNC1(wb, &gdtc_stor) };
	struct dirty_throttle_control * const gdtc = &gdtc_stor;
	struct dirty_throttle_control * const mdtc = FUNC6(&mdtc_stor) ?
						     &mdtc_stor : NULL;

	/*
	 * Similar to balance_dirty_pages() but ignores pages being written
	 * as we're trying to decide whether to put more under writeback.
	 */
	gdtc->avail = FUNC3();
	gdtc->dirty = FUNC4(NR_FILE_DIRTY) +
		      FUNC4(NR_UNSTABLE_NFS);
	FUNC2(gdtc);

	if (gdtc->dirty > gdtc->bg_thresh)
		return true;

	if (FUNC9(wb, WB_RECLAIMABLE) >
	    FUNC8(gdtc->wb, gdtc->bg_thresh))
		return true;

	if (mdtc) {
		unsigned long filepages, headroom, writeback;

		FUNC7(wb, &filepages, &headroom, &mdtc->dirty,
				    &writeback);
		FUNC5(mdtc, filepages, headroom);
		FUNC2(mdtc);	/* ditto, ignore writeback */

		if (mdtc->dirty > mdtc->bg_thresh)
			return true;

		if (FUNC9(wb, WB_RECLAIMABLE) >
		    FUNC8(mdtc->wb, mdtc->bg_thresh))
			return true;
	}

	return false;
}