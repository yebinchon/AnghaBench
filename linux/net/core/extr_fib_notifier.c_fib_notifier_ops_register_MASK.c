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
struct fib_notifier_ops {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fib_notifier_ops* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct fib_notifier_ops*,struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib_notifier_ops*) ; 
 struct fib_notifier_ops* FUNC3 (struct fib_notifier_ops const*,int,int /*<<< orphan*/ ) ; 

struct fib_notifier_ops *
FUNC4(const struct fib_notifier_ops *tmpl, struct net *net)
{
	struct fib_notifier_ops *ops;
	int err;

	ops = FUNC3(tmpl, sizeof(*ops), GFP_KERNEL);
	if (!ops)
		return FUNC0(-ENOMEM);

	err = FUNC1(ops, net);
	if (err)
		goto err_register;

	return ops;

err_register:
	FUNC2(ops);
	return FUNC0(err);
}