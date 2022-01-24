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
struct flowidn {int dummy; } ;
struct fib_lookup_arg {int /*<<< orphan*/  rule; struct dn_fib_res* result; } ;
struct dn_fib_res {int /*<<< orphan*/  r; } ;

/* Variables and functions */
 int /*<<< orphan*/  dn_fib_rules_ops ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fib_lookup_arg*) ; 
 int /*<<< orphan*/  FUNC1 (struct flowidn*) ; 

int FUNC2(struct flowidn *flp, struct dn_fib_res *res)
{
	struct fib_lookup_arg arg = {
		.result = res,
	};
	int err;

	err = FUNC0(dn_fib_rules_ops,
			       FUNC1(flp), 0, &arg);
	res->r = arg.rule;

	return err;
}