#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct net_device {scalar_t__ mtu; } ;
struct neighbour {int dummy; } ;
struct TYPE_7__ {struct net_device* dev; } ;
struct dn_route {TYPE_1__ dst; struct neighbour* n; scalar_t__ rt_gateway; int /*<<< orphan*/  rt_type; } ;
struct dn_fib_res {int /*<<< orphan*/  type; struct dn_fib_info* fi; } ;
struct dn_fib_info {int /*<<< orphan*/  fib_metrics; } ;
struct TYPE_8__ {scalar_t__ nh_scope; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dn_fib_res) ; 
 TYPE_6__ FUNC1 (struct dn_fib_res) ; 
 scalar_t__ FUNC2 (struct neighbour*) ; 
 int FUNC3 (struct neighbour*) ; 
 int /*<<< orphan*/  RTAX_ADVMSS ; 
 int /*<<< orphan*/  RTAX_MTU ; 
 scalar_t__ RT_SCOPE_LINK ; 
 struct neighbour* FUNC4 (int /*<<< orphan*/ *,scalar_t__*,struct net_device*) ; 
 unsigned int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn_neigh_table ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct dn_route *rt, struct dn_fib_res *res)
{
	struct dn_fib_info *fi = res->fi;
	struct net_device *dev = rt->dst.dev;
	unsigned int mss_metric;
	struct neighbour *n;

	if (fi) {
		if (FUNC0(*res) &&
		    FUNC1(*res).nh_scope == RT_SCOPE_LINK)
			rt->rt_gateway = FUNC0(*res);
		FUNC6(&rt->dst, fi->fib_metrics, true);
	}
	rt->rt_type = res->type;

	if (dev != NULL && rt->n == NULL) {
		n = FUNC4(&dn_neigh_table, &rt->rt_gateway, dev);
		if (FUNC2(n))
			return FUNC3(n);
		rt->n = n;
	}

	if (FUNC7(&rt->dst, RTAX_MTU) > rt->dst.dev->mtu)
		FUNC9(&rt->dst, RTAX_MTU, rt->dst.dev->mtu);
	mss_metric = FUNC8(&rt->dst, RTAX_ADVMSS);
	if (mss_metric) {
		unsigned int mss = FUNC5(dev, FUNC10(&rt->dst));
		if (mss_metric > mss)
			FUNC9(&rt->dst, RTAX_ADVMSS, mss);
	}
	return 0;
}