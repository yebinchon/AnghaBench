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
struct rtnexthop {int dummy; } ;
struct rtmsg {int dummy; } ;
struct rta_cacheinfo {int dummy; } ;
struct fib6_nh {int /*<<< orphan*/  fib_nh_lws; } ;
struct fib6_info {int fib6_nsiblings; struct fib6_nh* fib6_nh; scalar_t__ nh; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int RTAX_MAX ; 
 int TCP_CA_NAME_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  rt6_nh_nlmsg_size ; 

__attribute__((used)) static size_t FUNC5(struct fib6_info *f6i)
{
	int nexthop_len;

	if (f6i->nh) {
		nexthop_len = FUNC4(4); /* RTA_NH_ID */
		FUNC3(f6i->nh, rt6_nh_nlmsg_size,
					 &nexthop_len);
	} else {
		struct fib6_nh *nh = f6i->fib6_nh;

		nexthop_len = 0;
		if (f6i->fib6_nsiblings) {
			nexthop_len = FUNC4(0)	 /* RTA_MULTIPATH */
				    + FUNC0(sizeof(struct rtnexthop))
				    + FUNC4(16) /* RTA_GATEWAY */
				    + FUNC2(nh->fib_nh_lws);

			nexthop_len *= f6i->fib6_nsiblings;
		}
		nexthop_len += FUNC2(nh->fib_nh_lws);
	}

	return FUNC1(sizeof(struct rtmsg))
	       + FUNC4(16) /* RTA_SRC */
	       + FUNC4(16) /* RTA_DST */
	       + FUNC4(16) /* RTA_GATEWAY */
	       + FUNC4(16) /* RTA_PREFSRC */
	       + FUNC4(4) /* RTA_TABLE */
	       + FUNC4(4) /* RTA_IIF */
	       + FUNC4(4) /* RTA_OIF */
	       + FUNC4(4) /* RTA_PRIORITY */
	       + RTAX_MAX * FUNC4(4) /* RTA_METRICS */
	       + FUNC4(sizeof(struct rta_cacheinfo))
	       + FUNC4(TCP_CA_NAME_MAX) /* RTAX_CC_ALGO */
	       + FUNC4(1) /* RTA_PREF */
	       + nexthop_len;
}