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
struct xfrm_input_afinfo {size_t family; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_input_afinfo const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 struct xfrm_input_afinfo const** xfrm_input_afinfo ; 
 int /*<<< orphan*/  xfrm_input_afinfo_lock ; 

int FUNC6(const struct xfrm_input_afinfo *afinfo)
{
	int err = 0;

	FUNC2(&xfrm_input_afinfo_lock);
	if (FUNC1(xfrm_input_afinfo[afinfo->family] != NULL)) {
		if (FUNC5(xfrm_input_afinfo[afinfo->family] != afinfo))
			err = -EINVAL;
		else
			FUNC0(xfrm_input_afinfo[afinfo->family], NULL);
	}
	FUNC3(&xfrm_input_afinfo_lock);
	FUNC4();
	return err;
}