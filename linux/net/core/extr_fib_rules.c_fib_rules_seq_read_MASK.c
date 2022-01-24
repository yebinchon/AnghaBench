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
struct net {int dummy; } ;
struct fib_rules_ops {unsigned int fib_rules_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct fib_rules_ops* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fib_rules_ops*) ; 

unsigned int FUNC3(struct net *net, int family)
{
	unsigned int fib_rules_seq;
	struct fib_rules_ops *ops;

	FUNC0();

	ops = FUNC1(net, family);
	if (!ops)
		return 0;
	fib_rules_seq = ops->fib_rules_seq;
	FUNC2(ops);

	return fib_rules_seq;
}