#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {int dummy; } ;
struct TYPE_8__ {int plen; struct in6_addr addr; } ;
struct TYPE_6__ {int plen; struct in6_addr addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct rt6_info {TYPE_4__ rt6i_src; int /*<<< orphan*/  rt6i_flags; TYPE_2__ rt6i_dst; TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct fib6_result {struct fib6_info* f6i; } ;
struct TYPE_7__ {int plen; int /*<<< orphan*/  addr; } ;
struct fib6_info {TYPE_3__ fib6_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_HOST ; 
 int /*<<< orphan*/  RTF_ANYCAST ; 
 int /*<<< orphan*/  RTF_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib6_info*) ; 
 struct rt6_info* FUNC3 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt6_info*,struct fib6_result const*) ; 
 struct net_device* FUNC5 (struct fib6_result const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC7 (struct fib6_result const*) ; 

__attribute__((used)) static struct rt6_info *FUNC8(const struct fib6_result *res,
					   const struct in6_addr *daddr,
					   const struct in6_addr *saddr)
{
	struct fib6_info *f6i = res->f6i;
	struct net_device *dev;
	struct rt6_info *rt;

	/*
	 *	Clone the route.
	 */

	if (!FUNC1(f6i))
		return NULL;

	dev = FUNC5(res);
	rt = FUNC3(FUNC0(dev), dev, 0);
	if (!rt) {
		FUNC2(f6i);
		return NULL;
	}

	FUNC4(rt, res);
	rt->rt6i_flags |= RTF_CACHE;
	rt->dst.flags |= DST_HOST;
	rt->rt6i_dst.addr = *daddr;
	rt->rt6i_dst.plen = 128;

	if (!FUNC7(res)) {
		if (f6i->fib6_dst.plen != 128 &&
		    FUNC6(&f6i->fib6_dst.addr, daddr))
			rt->rt6i_flags |= RTF_ANYCAST;
#ifdef CONFIG_IPV6_SUBTREES
		if (rt->rt6i_src.plen && saddr) {
			rt->rt6i_src.addr = *saddr;
			rt->rt6i_src.plen = 128;
		}
#endif
	}

	return rt;
}