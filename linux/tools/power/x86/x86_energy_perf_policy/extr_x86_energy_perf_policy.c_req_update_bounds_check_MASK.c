#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ hwp_min; scalar_t__ hwp_max; scalar_t__ hwp_desired; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__ req_update ; 
 scalar_t__ update_hwp_max ; 
 scalar_t__ update_hwp_min ; 

int FUNC2(void)
{
	if (!FUNC0())
		return 0;

	/* fail if min > max requested */
	if ((update_hwp_max && update_hwp_min) &&
	    (req_update.hwp_min > req_update.hwp_max)) {
		FUNC1("hwp-min %d > hwp_max %d\n", req_update.hwp_min, req_update.hwp_max);
		return -EINVAL;
	}

	/* fail if desired > max requestd */
	if (req_update.hwp_desired && update_hwp_max &&
	    (req_update.hwp_desired > req_update.hwp_max)) {
		FUNC1("hwp-desired cannot be greater than hwp_max\n");
		return -EINVAL;
	}
	/* fail if desired < min requestd */
	if (req_update.hwp_desired && update_hwp_min &&
	    (req_update.hwp_desired < req_update.hwp_min)) {
		FUNC1("hwp-desired cannot be less than hwp_min\n");
		return -EINVAL;
	}

	return 0;
}