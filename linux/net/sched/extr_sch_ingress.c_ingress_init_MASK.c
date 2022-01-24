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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  miniq_ingress; } ;
struct TYPE_2__ {int /*<<< orphan*/ * chain_head_change_priv; int /*<<< orphan*/  chain_head_change; int /*<<< orphan*/  binder_type; } ;
struct ingress_sched_data {TYPE_1__ block_info; int /*<<< orphan*/  block; int /*<<< orphan*/  miniqp; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ; 
 int /*<<< orphan*/  clsact_chain_head_change ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct Qdisc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 
 struct ingress_sched_data* FUNC3 (struct Qdisc*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct Qdisc*,TYPE_1__*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, struct nlattr *opt,
			struct netlink_ext_ack *extack)
{
	struct ingress_sched_data *q = FUNC3(sch);
	struct net_device *dev = FUNC2(sch);

	FUNC1();

	FUNC0(&q->miniqp, sch, &dev->miniq_ingress);

	q->block_info.binder_type = FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS;
	q->block_info.chain_head_change = clsact_chain_head_change;
	q->block_info.chain_head_change_priv = &q->miniqp;

	return FUNC4(&q->block, sch, &q->block_info, extack);
}