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
struct fib_rules_ops {struct net* fro_net; int /*<<< orphan*/  rules_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fib_rules_ops* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fib_rules_ops*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib_rules_ops*) ; 
 struct fib_rules_ops* FUNC4 (struct fib_rules_ops const*,int,int /*<<< orphan*/ ) ; 

struct fib_rules_ops *
FUNC5(const struct fib_rules_ops *tmpl, struct net *net)
{
	struct fib_rules_ops *ops;
	int err;

	ops = FUNC4(tmpl, sizeof(*ops), GFP_KERNEL);
	if (ops == NULL)
		return FUNC0(-ENOMEM);

	FUNC1(&ops->rules_list);
	ops->fro_net = net;

	err = FUNC2(ops);
	if (err) {
		FUNC3(ops);
		ops = FUNC0(err);
	}

	return ops;
}