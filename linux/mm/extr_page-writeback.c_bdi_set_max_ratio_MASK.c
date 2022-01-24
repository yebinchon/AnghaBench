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
struct backing_dev_info {unsigned int min_ratio; unsigned int max_ratio; unsigned int max_prop_frac; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FPROP_FRAC_BASE ; 
 int /*<<< orphan*/  bdi_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct backing_dev_info *bdi, unsigned max_ratio)
{
	int ret = 0;

	if (max_ratio > 100)
		return -EINVAL;

	FUNC0(&bdi_lock);
	if (bdi->min_ratio > max_ratio) {
		ret = -EINVAL;
	} else {
		bdi->max_ratio = max_ratio;
		bdi->max_prop_frac = (FPROP_FRAC_BASE * max_ratio) / 100;
	}
	FUNC1(&bdi_lock);

	return ret;
}