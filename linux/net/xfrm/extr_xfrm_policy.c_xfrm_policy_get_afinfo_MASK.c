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
struct xfrm_policy_afinfo {int dummy; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ *) ; 
 struct xfrm_policy_afinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * xfrm_policy_afinfo ; 

__attribute__((used)) static const struct xfrm_policy_afinfo *FUNC5(unsigned short family)
{
	const struct xfrm_policy_afinfo *afinfo;

	if (FUNC4(family >= FUNC0(xfrm_policy_afinfo)))
		return NULL;
	FUNC2();
	afinfo = FUNC1(xfrm_policy_afinfo[family]);
	if (FUNC4(!afinfo))
		FUNC3();
	return afinfo;
}