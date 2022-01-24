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
struct o2hb_region {int hr_node_deleted; int hr_last_hb_status; unsigned int hr_timeout_ms; int hr_blocks; int /*<<< orphan*/  hr_aborted_start; int /*<<< orphan*/  hr_unclean_stop; int /*<<< orphan*/ * hr_slots; } ;
struct o2hb_bio_wait_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  MIN_NICE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int ML_HEARTBEAT ; 
 int ML_KTHREAD ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct o2hb_region*) ; 
 int FUNC7 (struct o2hb_region*) ; 
 int FUNC8 (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ; 
 int /*<<< orphan*/  FUNC9 (struct o2hb_region*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  o2hb_steady_queue ; 
 int /*<<< orphan*/  FUNC11 (struct o2hb_bio_wait_ctxt*) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(void *data)
{
	int i, ret;
	struct o2hb_region *reg = data;
	struct o2hb_bio_wait_ctxt write_wc;
	ktime_t before_hb, after_hb;
	unsigned int elapsed_msec;

	FUNC3(ML_HEARTBEAT|ML_KTHREAD, "hb thread running\n");

	FUNC14(current, MIN_NICE);

	/* Pin node */
	ret = FUNC12();
	if (ret) {
		FUNC3(ML_ERROR, "Node has been deleted, ret = %d\n", ret);
		reg->hr_node_deleted = 1;
		FUNC15(&o2hb_steady_queue);
		return 0;
	}

	while (!FUNC0() &&
	       !reg->hr_unclean_stop && !reg->hr_aborted_start) {
		/* We track the time spent inside
		 * o2hb_do_disk_heartbeat so that we avoid more than
		 * hr_timeout_ms between disk writes. On busy systems
		 * this should result in a heartbeat which is less
		 * likely to time itself out. */
		before_hb = FUNC1();

		ret = FUNC7(reg);
		reg->hr_last_hb_status = ret;

		after_hb = FUNC1();

		elapsed_msec = (unsigned int)
				FUNC2(after_hb, before_hb);

		FUNC3(ML_HEARTBEAT,
		     "start = %lld, end = %lld, msec = %u, ret = %d\n",
		     before_hb, after_hb, elapsed_msec, ret);

		if (!FUNC0() &&
		    elapsed_msec < reg->hr_timeout_ms) {
			/* the kthread api has blocked signals for us so no
			 * need to record the return value. */
			FUNC5(reg->hr_timeout_ms - elapsed_msec);
		}
	}

	FUNC6(reg);

	/* unclean stop is only used in very bad situation */
	for(i = 0; !reg->hr_unclean_stop && i < reg->hr_blocks; i++)
		FUNC10(&reg->hr_slots[i]);

	/* Explicit down notification - avoid forcing the other nodes
	 * to timeout on this region when we could just as easily
	 * write a clear generation - thus indicating to them that
	 * this node has left this region.
	 */
	if (!reg->hr_unclean_stop && !reg->hr_aborted_start) {
		FUNC9(reg, 0);
		ret = FUNC8(reg, &write_wc);
		if (ret == 0)
			FUNC11(&write_wc);
		else
			FUNC4(ret);
	}

	/* Unpin node */
	FUNC13();

	FUNC3(ML_HEARTBEAT|ML_KTHREAD, "o2hb thread exiting\n");

	return 0;
}