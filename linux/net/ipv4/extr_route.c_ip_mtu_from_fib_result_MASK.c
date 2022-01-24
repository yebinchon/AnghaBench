#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct fib_result {struct fib_info* fi; struct fib_nh_common* nhc; } ;
struct fib_nh_exception {scalar_t__ fnhe_pmtu; int /*<<< orphan*/  fnhe_expires; } ;
struct fib_nh_common {int /*<<< orphan*/  nhc_lwtstate; struct net_device* nhc_dev; } ;
struct fib_info {scalar_t__ fib_mtu; TYPE_2__* fib_metrics; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ sysctl_ip_fwd_use_pmtu; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_5__ {int* metrics; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_MAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RTAX_LOCK ; 
 int RTAX_MTU ; 
 TYPE_3__* FUNC1 (struct net_device*) ; 
 struct fib_nh_exception* FUNC2 (struct fib_nh_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u32 FUNC7(struct fib_result *res, __be32 daddr)
{
	struct fib_nh_common *nhc = res->nhc;
	struct net_device *dev = nhc->nhc_dev;
	struct fib_info *fi = res->fi;
	u32 mtu = 0;

	if (FUNC1(dev)->ipv4.sysctl_ip_fwd_use_pmtu ||
	    fi->fib_metrics->metrics[RTAX_LOCK - 1] & (1 << RTAX_MTU))
		mtu = fi->fib_mtu;

	if (FUNC3(!mtu)) {
		struct fib_nh_exception *fnhe;

		fnhe = FUNC2(nhc, daddr);
		if (fnhe && !FUNC6(jiffies, fnhe->fnhe_expires))
			mtu = fnhe->fnhe_pmtu;
	}

	if (FUNC3(!mtu))
		mtu = FUNC5(FUNC0(dev->mtu), IP_MAX_MTU);

	return mtu - FUNC4(nhc->nhc_lwtstate, mtu);
}