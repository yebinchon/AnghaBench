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
struct xfrm_policy_afinfo {struct dst_ops* dst_ops; } ;
struct dst_ops {int /*<<< orphan*/ * link_failure; int /*<<< orphan*/ * negative_advice; int /*<<< orphan*/ * check; int /*<<< orphan*/ * kmem_cachep; } ;

/* Variables and functions */
 int FUNC0 (struct xfrm_policy_afinfo const**) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy_afinfo const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct xfrm_policy_afinfo const** xfrm_policy_afinfo ; 

void FUNC3(const struct xfrm_policy_afinfo *afinfo)
{
	struct dst_ops *dst_ops = afinfo->dst_ops;
	int i;

	for (i = 0; i < FUNC0(xfrm_policy_afinfo); i++) {
		if (xfrm_policy_afinfo[i] != afinfo)
			continue;
		FUNC1(xfrm_policy_afinfo[i], NULL);
		break;
	}

	FUNC2();

	dst_ops->kmem_cachep = NULL;
	dst_ops->check = NULL;
	dst_ops->negative_advice = NULL;
	dst_ops->link_failure = NULL;
}