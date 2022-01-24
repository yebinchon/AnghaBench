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
struct rt6_mtu_change_arg {struct fib6_info* f6i; int /*<<< orphan*/  dev; } ;
struct inet6_dev {int dummy; } ;
struct fib6_info {int /*<<< orphan*/  fib6_nh; scalar_t__ nh; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_MTU ; 
 struct inet6_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fib6_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rt6_mtu_change_arg*) ; 
 int FUNC3 (scalar_t__,int (*) (int /*<<< orphan*/ ,struct rt6_mtu_change_arg*),struct rt6_mtu_change_arg*) ; 

__attribute__((used)) static int FUNC4(struct fib6_info *f6i, void *p_arg)
{
	struct rt6_mtu_change_arg *arg = (struct rt6_mtu_change_arg *) p_arg;
	struct inet6_dev *idev;

	/* In IPv6 pmtu discovery is not optional,
	   so that RTAX_MTU lock cannot disable it.
	   We still use this lock to block changes
	   caused by addrconf/ndisc.
	*/

	idev = FUNC0(arg->dev);
	if (!idev)
		return 0;

	if (FUNC1(f6i, RTAX_MTU))
		return 0;

	arg->f6i = f6i;
	if (f6i->nh) {
		/* fib6_nh_mtu_change only returns 0, so this is safe */
		return FUNC3(f6i->nh, fib6_nh_mtu_change,
						arg);
	}

	return FUNC2(f6i->fib6_nh, arg);
}