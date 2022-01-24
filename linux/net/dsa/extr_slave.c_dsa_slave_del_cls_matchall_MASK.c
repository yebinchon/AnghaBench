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
struct tc_cls_matchall_offload {int /*<<< orphan*/  cookie; } ;
struct net_device {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int /*<<< orphan*/  index; struct dsa_switch* ds; } ;
struct dsa_mall_tc_entry {int type; int /*<<< orphan*/  mirror; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* port_mirror_del ) (struct dsa_switch*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
#define  DSA_PORT_MALL_MIRROR 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dsa_mall_tc_entry* FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct dsa_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsa_mall_tc_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dsa_switch*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				       struct tc_cls_matchall_offload *cls)
{
	struct dsa_port *dp = FUNC2(dev);
	struct dsa_mall_tc_entry *mall_tc_entry;
	struct dsa_switch *ds = dp->ds;

	if (!ds->ops->port_mirror_del)
		return;

	mall_tc_entry = FUNC1(dev, cls->cookie);
	if (!mall_tc_entry)
		return;

	FUNC4(&mall_tc_entry->list);

	switch (mall_tc_entry->type) {
	case DSA_PORT_MALL_MIRROR:
		ds->ops->port_mirror_del(ds, dp->index, &mall_tc_entry->mirror);
		break;
	default:
		FUNC0(1);
	}

	FUNC3(mall_tc_entry);
}