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
struct tcf_proto_ops {int /*<<< orphan*/  owner; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOENT ; 
 struct tcf_proto_ops const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 struct tcf_proto_ops* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static const struct tcf_proto_ops *
FUNC7(const char *kind, bool rtnl_held,
		     struct netlink_ext_ack *extack)
{
	const struct tcf_proto_ops *ops;

	ops = FUNC2(kind);
	if (ops)
		return ops;
#ifdef CONFIG_MODULES
	if (rtnl_held)
		rtnl_unlock();
	request_module("cls_%s", kind);
	if (rtnl_held)
		rtnl_lock();
	ops = __tcf_proto_lookup_ops(kind);
	/* We dropped the RTNL semaphore in order to perform
	 * the module load. So, even if we succeeded in loading
	 * the module we have to replay the request. We indicate
	 * this using -EAGAIN.
	 */
	if (ops) {
		module_put(ops->owner);
		return ERR_PTR(-EAGAIN);
	}
#endif
	FUNC1(extack, "TC classifier not found");
	return FUNC0(-ENOENT);
}