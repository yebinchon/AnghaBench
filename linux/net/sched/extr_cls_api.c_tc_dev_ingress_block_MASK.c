#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcf_block {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc_class_ops {struct tcf_block* (* tcf_block ) (struct Qdisc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_4__ {struct Qdisc* qdisc_sleeping; } ;
struct TYPE_3__ {struct Qdisc_class_ops* cl_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  TC_H_MIN_INGRESS ; 
 TYPE_2__* FUNC0 (struct net_device*) ; 
 struct tcf_block* FUNC1 (struct Qdisc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct tcf_block *FUNC2(struct net_device *dev)
{
	const struct Qdisc_class_ops *cops;
	struct Qdisc *qdisc;

	if (!FUNC0(dev))
		return NULL;

	qdisc = FUNC0(dev)->qdisc_sleeping;
	if (!qdisc)
		return NULL;

	cops = qdisc->ops->cl_ops;
	if (!cops)
		return NULL;

	if (!cops->tcf_block)
		return NULL;

	return cops->tcf_block(qdisc, TC_H_MIN_INGRESS, NULL);
}