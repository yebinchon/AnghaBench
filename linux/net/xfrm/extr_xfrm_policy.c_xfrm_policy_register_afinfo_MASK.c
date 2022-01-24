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
struct dst_ops {scalar_t__ confirm_neigh; int /*<<< orphan*/ * neigh_lookup; int /*<<< orphan*/ * link_failure; int /*<<< orphan*/ * negative_advice; int /*<<< orphan*/ * mtu; int /*<<< orphan*/ * default_advmss; int /*<<< orphan*/ * check; int /*<<< orphan*/ * kmem_cachep; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int EAFNOSUPPORT ; 
 int EEXIST ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct xfrm_policy_afinfo const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ xfrm_confirm_neigh ; 
 int /*<<< orphan*/ * xfrm_default_advmss ; 
 int /*<<< orphan*/ * xfrm_dst_cache ; 
 int /*<<< orphan*/ * xfrm_dst_check ; 
 int /*<<< orphan*/ * xfrm_link_failure ; 
 int /*<<< orphan*/ * xfrm_mtu ; 
 int /*<<< orphan*/ * xfrm_negative_advice ; 
 int /*<<< orphan*/ * xfrm_neigh_lookup ; 
 int /*<<< orphan*/ ** xfrm_policy_afinfo ; 
 int /*<<< orphan*/  xfrm_policy_afinfo_lock ; 

int FUNC7(const struct xfrm_policy_afinfo *afinfo, int family)
{
	int err = 0;

	if (FUNC1(family >= FUNC0(xfrm_policy_afinfo)))
		return -EAFNOSUPPORT;

	FUNC4(&xfrm_policy_afinfo_lock);
	if (FUNC6(xfrm_policy_afinfo[family] != NULL))
		err = -EEXIST;
	else {
		struct dst_ops *dst_ops = afinfo->dst_ops;
		if (FUNC2(dst_ops->kmem_cachep == NULL))
			dst_ops->kmem_cachep = xfrm_dst_cache;
		if (FUNC2(dst_ops->check == NULL))
			dst_ops->check = xfrm_dst_check;
		if (FUNC2(dst_ops->default_advmss == NULL))
			dst_ops->default_advmss = xfrm_default_advmss;
		if (FUNC2(dst_ops->mtu == NULL))
			dst_ops->mtu = xfrm_mtu;
		if (FUNC2(dst_ops->negative_advice == NULL))
			dst_ops->negative_advice = xfrm_negative_advice;
		if (FUNC2(dst_ops->link_failure == NULL))
			dst_ops->link_failure = xfrm_link_failure;
		if (FUNC2(dst_ops->neigh_lookup == NULL))
			dst_ops->neigh_lookup = xfrm_neigh_lookup;
		if (FUNC2(!dst_ops->confirm_neigh))
			dst_ops->confirm_neigh = xfrm_confirm_neigh;
		FUNC3(xfrm_policy_afinfo[family], afinfo);
	}
	FUNC5(&xfrm_policy_afinfo_lock);

	return err;
}