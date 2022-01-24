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
struct tcf_proto {TYPE_1__* ops; int /*<<< orphan*/  chain; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* destroy ) (struct tcf_proto*,int,struct netlink_ext_ack*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_proto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tcf_proto*) ; 

__attribute__((used)) static void FUNC5(struct tcf_proto *tp, bool rtnl_held,
			      bool sig_destroy, struct netlink_ext_ack *extack)
{
	tp->ops->destroy(tp, rtnl_held, extack);
	if (sig_destroy)
		FUNC4(tp->chain, tp);
	FUNC3(tp->chain);
	FUNC1(tp->ops->owner);
	FUNC0(tp, rcu);
}