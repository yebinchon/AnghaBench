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
struct xfrm_state_afinfo {int family; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int NPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct xfrm_state_afinfo* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ ** xfrm_state_afinfo ; 
 int /*<<< orphan*/  xfrm_state_afinfo_lock ; 

int FUNC7(struct xfrm_state_afinfo *afinfo)
{
	int err = 0, family = afinfo->family;

	if (FUNC1(family >= NPROTO))
		return -EAFNOSUPPORT;

	FUNC4(&xfrm_state_afinfo_lock);
	if (FUNC2(xfrm_state_afinfo[afinfo->family] != NULL)) {
		if (FUNC3(xfrm_state_afinfo[family]) != afinfo)
			err = -EINVAL;
		else
			FUNC0(xfrm_state_afinfo[afinfo->family], NULL);
	}
	FUNC5(&xfrm_state_afinfo_lock);
	FUNC6();
	return err;
}