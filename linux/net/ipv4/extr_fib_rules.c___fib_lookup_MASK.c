#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rules_ops; } ;
struct net {TYPE_1__ ipv4; } ;
struct flowi4 {int dummy; } ;
struct fib_result {int /*<<< orphan*/  tclassid; } ;
struct fib_lookup_arg {unsigned int flags; scalar_t__ rule; struct fib_result* result; } ;
struct fib4_rule {int /*<<< orphan*/  tclassid; } ;

/* Variables and functions */
 int ENETUNREACH ; 
 int ESRCH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fib_lookup_arg*) ; 
 int /*<<< orphan*/  FUNC1 (struct flowi4*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 

int FUNC3(struct net *net, struct flowi4 *flp,
		 struct fib_result *res, unsigned int flags)
{
	struct fib_lookup_arg arg = {
		.result = res,
		.flags = flags,
	};
	int err;

	/* update flow if oif or iif point to device enslaved to l3mdev */
	FUNC2(net, FUNC1(flp));

	err = FUNC0(net->ipv4.rules_ops, FUNC1(flp), 0, &arg);
#ifdef CONFIG_IP_ROUTE_CLASSID
	if (arg.rule)
		res->tclassid = ((struct fib4_rule *)arg.rule)->tclassid;
	else
		res->tclassid = 0;
#endif

	if (err == -ESRCH)
		err = -ENETUNREACH;

	return err;
}