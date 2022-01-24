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
struct tcf_proto {struct tc_u_common* data; } ;
struct tc_u_knode {int dummy; } ;
struct tc_u_hnode {int refcnt; scalar_t__ is_root; int /*<<< orphan*/  handle; } ;
struct tc_u_common {int refcnt; scalar_t__ knodes; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tcf_proto*,struct tc_u_knode*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*,struct tc_u_hnode*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_proto*,struct tc_u_knode*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC5(struct tcf_proto *tp, void *arg, bool *last,
		      bool rtnl_held, struct netlink_ext_ack *extack)
{
	struct tc_u_hnode *ht = arg;
	struct tc_u_common *tp_c = tp->data;
	int ret = 0;

	if (FUNC1(ht->handle)) {
		FUNC4(tp, (struct tc_u_knode *)ht, extack);
		ret = FUNC2(tp, (struct tc_u_knode *)ht);
		goto out;
	}

	if (ht->is_root) {
		FUNC0(extack, "Not allowed to delete root node");
		return -EINVAL;
	}

	if (ht->refcnt == 1) {
		FUNC3(tp, ht, extack);
	} else {
		FUNC0(extack, "Can not delete in-use filter");
		return -EBUSY;
	}

out:
	*last = tp_c->refcnt == 1 && tp_c->knodes == 0;
	return ret;
}