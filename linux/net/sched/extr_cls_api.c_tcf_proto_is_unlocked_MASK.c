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
struct tcf_proto_ops {int flags; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcf_proto_ops const*) ; 
 int TCF_PROTO_OPS_DOIT_UNLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 struct tcf_proto_ops* FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(const char *kind)
{
	const struct tcf_proto_ops *ops;
	bool ret;

	if (FUNC2(kind) == 0)
		return false;

	ops = FUNC3(kind, false, NULL);
	/* On error return false to take rtnl lock. Proto lookup/create
	 * functions will perform lookup again and properly handle errors.
	 */
	if (FUNC0(ops))
		return false;

	ret = !!(ops->flags & TCF_PROTO_OPS_DOIT_UNLOCKED);
	FUNC1(ops->owner);
	return ret;
}