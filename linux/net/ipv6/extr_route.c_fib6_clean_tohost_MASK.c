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
struct in6_addr {int dummy; } ;
struct fib6_nh {int /*<<< orphan*/  fib_nh_gw6; scalar_t__ fib_nh_gw_family; } ;
struct fib6_info {int fib6_flags; struct fib6_nh* fib6_nh; scalar_t__ nh; } ;

/* Variables and functions */
 int RTF_RA_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (struct fib6_nh*,struct in6_addr*) ; 
 scalar_t__ FUNC1 (struct in6_addr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct fib6_info *rt, void *arg)
{
	struct in6_addr *gateway = (struct in6_addr *)arg;
	struct fib6_nh *nh;

	/* RA routes do not use nexthops */
	if (rt->nh)
		return 0;

	nh = rt->fib6_nh;
	if (((rt->fib6_flags & RTF_RA_ROUTER) == RTF_RA_ROUTER) &&
	    nh->fib_nh_gw_family && FUNC1(gateway, &nh->fib_nh_gw6))
		return -1;

	/* Further clean up cached routes in exception table.
	 * This is needed because cached route may have a different
	 * gateway than its 'parent' in the case of an ip redirect.
	 */
	FUNC0(nh, gateway);

	return 0;
}