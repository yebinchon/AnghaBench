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
struct dirty_throttle_control {struct bdi_writeback* wb; } ;
struct bdi_writeback {unsigned long bw_time_stamp; unsigned long dirtied_stamp; unsigned long written_stamp; int /*<<< orphan*/ * stat; int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 unsigned long BANDWIDTH_INTERVAL ; 
 int /*<<< orphan*/  CONFIG_CGROUP_WRITEBACK ; 
 unsigned long HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t WB_DIRTIED ; 
 size_t WB_WRITTEN ; 
 int /*<<< orphan*/  FUNC1 (struct dirty_throttle_control*,unsigned long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct dirty_throttle_control*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct bdi_writeback*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct dirty_throttle_control *gdtc,
				  struct dirty_throttle_control *mdtc,
				  unsigned long start_time,
				  bool update_ratelimit)
{
	struct bdi_writeback *wb = gdtc->wb;
	unsigned long now = jiffies;
	unsigned long elapsed = now - wb->bw_time_stamp;
	unsigned long dirtied;
	unsigned long written;

	FUNC2(&wb->list_lock);

	/*
	 * rate-limit, only update once every 200ms.
	 */
	if (elapsed < BANDWIDTH_INTERVAL)
		return;

	dirtied = FUNC3(&wb->stat[WB_DIRTIED]);
	written = FUNC3(&wb->stat[WB_WRITTEN]);

	/*
	 * Skip quiet periods when disk bandwidth is under-utilized.
	 * (at least 1s idle time between two flusher runs)
	 */
	if (elapsed > HZ && FUNC4(wb->bw_time_stamp, start_time))
		goto snapshot;

	if (update_ratelimit) {
		FUNC1(gdtc, now);
		FUNC5(gdtc, dirtied, elapsed);

		/*
		 * @mdtc is always NULL if !CGROUP_WRITEBACK but the
		 * compiler has no way to figure that out.  Help it.
		 */
		if (FUNC0(CONFIG_CGROUP_WRITEBACK) && mdtc) {
			FUNC1(mdtc, now);
			FUNC5(mdtc, dirtied, elapsed);
		}
	}
	FUNC6(wb, elapsed, written);

snapshot:
	wb->dirtied_stamp = dirtied;
	wb->written_stamp = written;
	wb->bw_time_stamp = now;
}