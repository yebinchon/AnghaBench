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
struct nlattr {int dummy; } ;
struct fib_rule_port_range {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct fib_rule_port_range const*) ; 
 struct fib_rule_port_range* FUNC1 (struct nlattr*) ; 

__attribute__((used)) static int FUNC2(struct nlattr *pattr,
			      struct fib_rule_port_range *port_range)
{
	const struct fib_rule_port_range *pr = FUNC1(pattr);

	if (!FUNC0(pr))
		return -EINVAL;

	port_range->start = pr->start;
	port_range->end = pr->end;

	return 0;
}