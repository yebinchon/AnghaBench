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
struct o2hb_region {int /*<<< orphan*/  hr_nego_node_bitmap; int /*<<< orphan*/  hr_nego_timeout_work; int /*<<< orphan*/  hr_write_timeout_work; int /*<<< orphan*/  hr_region_num; int /*<<< orphan*/  hr_steady_iterations; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_HEARTBEAT ; 
 int /*<<< orphan*/  O2HB_MAX_WRITE_TIMEOUT_MS ; 
 int /*<<< orphan*/  O2HB_NEGO_TIMEOUT_MS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  o2hb_failed_region_bitmap ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct o2hb_region *reg)
{
	/* Arm writeout only after thread reaches steady state */
	if (FUNC0(&reg->hr_steady_iterations) != 0)
		return;

	FUNC4(ML_HEARTBEAT, "Queue write timeout for %u ms\n",
	     O2HB_MAX_WRITE_TIMEOUT_MS);

	if (FUNC6()) {
		FUNC8(&o2hb_live_lock);
		FUNC2(reg->hr_region_num, o2hb_failed_region_bitmap);
		FUNC9(&o2hb_live_lock);
	}
	FUNC1(&reg->hr_write_timeout_work);
	FUNC7(&reg->hr_write_timeout_work,
			      FUNC5(O2HB_MAX_WRITE_TIMEOUT_MS));

	FUNC1(&reg->hr_nego_timeout_work);
	/* negotiate timeout must be less than write timeout. */
	FUNC7(&reg->hr_nego_timeout_work,
			      FUNC5(O2HB_NEGO_TIMEOUT_MS));
	FUNC3(reg->hr_nego_node_bitmap, 0, sizeof(reg->hr_nego_node_bitmap));
}