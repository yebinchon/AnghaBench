#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ protocol; } ;
struct tc_cls_matchall_offload {int /*<<< orphan*/  cookie; TYPE_2__* rule; TYPE_1__ common; } ;
struct net_device {int dummy; } ;
struct flow_action_entry {scalar_t__ id; struct net_device* dev; } ;
struct dsa_switch {TYPE_3__* ops; } ;
struct dsa_slave_priv {int /*<<< orphan*/  mall_tc_list; } ;
struct dsa_port {int /*<<< orphan*/  index; struct dsa_switch* ds; } ;
struct dsa_mall_mirror_tc_entry {int ingress; int /*<<< orphan*/  to_local_port; } ;
struct dsa_mall_tc_entry {int /*<<< orphan*/  list; struct dsa_mall_mirror_tc_entry mirror; int /*<<< orphan*/  type; int /*<<< orphan*/  cookie; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_8__ {struct flow_action_entry* entries; } ;
struct TYPE_7__ {int (* port_mirror_add ) (struct dsa_switch*,int /*<<< orphan*/ ,struct dsa_mall_mirror_tc_entry*,int) ;} ;
struct TYPE_6__ {TYPE_4__ action; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_PORT_MALL_MIRROR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_ALL ; 
 scalar_t__ FLOW_ACTION_MIRRED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct dsa_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dsa_mall_tc_entry*) ; 
 struct dsa_mall_tc_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dsa_slave_priv* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct dsa_switch*,int /*<<< orphan*/ ,struct dsa_mall_mirror_tc_entry*,int) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
				      struct tc_cls_matchall_offload *cls,
				      bool ingress)
{
	struct dsa_port *dp = FUNC1(dev);
	struct dsa_slave_priv *p = FUNC7(dev);
	struct dsa_mall_tc_entry *mall_tc_entry;
	__be16 protocol = cls->common.protocol;
	struct dsa_switch *ds = dp->ds;
	struct flow_action_entry *act;
	struct dsa_port *to_dp;
	int err = -EOPNOTSUPP;

	if (!ds->ops->port_mirror_add)
		return err;

	if (!FUNC2(&cls->rule->action))
		return err;

	act = &cls->rule->action.entries[0];

	if (act->id == FLOW_ACTION_MIRRED && protocol == FUNC3(ETH_P_ALL)) {
		struct dsa_mall_mirror_tc_entry *mirror;

		if (!act->dev)
			return -EINVAL;

		if (!FUNC0(act->dev))
			return -EOPNOTSUPP;

		mall_tc_entry = FUNC5(sizeof(*mall_tc_entry), GFP_KERNEL);
		if (!mall_tc_entry)
			return -ENOMEM;

		mall_tc_entry->cookie = cls->cookie;
		mall_tc_entry->type = DSA_PORT_MALL_MIRROR;
		mirror = &mall_tc_entry->mirror;

		to_dp = FUNC1(act->dev);

		mirror->to_local_port = to_dp->index;
		mirror->ingress = ingress;

		err = ds->ops->port_mirror_add(ds, dp->index, mirror, ingress);
		if (err) {
			FUNC4(mall_tc_entry);
			return err;
		}

		FUNC6(&mall_tc_entry->list, &p->mall_tc_list);
	}

	return 0;
}