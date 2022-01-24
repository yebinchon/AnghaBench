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
struct fib6_nh {scalar_t__ fib_nh_lws; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct fib6_nh *nh, void *arg)
{
	int *nexthop_len = arg;

	*nexthop_len += FUNC2(0)	 /* RTA_MULTIPATH */
		     + FUNC0(sizeof(struct rtnexthop))
		     + FUNC2(16); /* RTA_GATEWAY */

	if (nh->fib_nh_lws) {
		/* RTA_ENCAP_TYPE */
		*nexthop_len += FUNC1(nh->fib_nh_lws);
		/* RTA_ENCAP */
		*nexthop_len += FUNC2(2);
	}

	return 0;
}