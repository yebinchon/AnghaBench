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
struct tcf_block_ext_info {int dummy; } ;
struct tcf_block {int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  nooffloaddevcnt; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {TYPE_2__* netdev_ops; } ;
struct Qdisc {TYPE_1__* dev_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  ndo_setup_tc; } ;
struct TYPE_3__ {struct net_device* dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FLOW_BLOCK_BIND ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_block*,struct net_device*,struct tcf_block_ext_info*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC4 (struct tcf_block*,struct net_device*,struct tcf_block_ext_info*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC5 (struct tcf_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct tcf_block *block, struct Qdisc *q,
				  struct tcf_block_ext_info *ei,
				  struct netlink_ext_ack *extack)
{
	struct net_device *dev = q->dev_queue->dev;
	int err;

	FUNC1(&block->cb_lock);
	if (!dev->netdev_ops->ndo_setup_tc)
		goto no_offload_dev_inc;

	/* If tc offload feature is disabled and the block we try to bind
	 * to already has some offloaded filters, forbid to bind.
	 */
	if (!FUNC2(dev) && FUNC5(block)) {
		FUNC0(extack, "Bind to offloaded block failed as dev has offload disabled");
		err = -EOPNOTSUPP;
		goto err_unlock;
	}

	err = FUNC4(block, dev, ei, FLOW_BLOCK_BIND, extack);
	if (err == -EOPNOTSUPP)
		goto no_offload_dev_inc;
	if (err)
		goto err_unlock;

	FUNC3(block, dev, ei, FLOW_BLOCK_BIND, extack);
	FUNC6(&block->cb_lock);
	return 0;

no_offload_dev_inc:
	if (FUNC5(block)) {
		err = -EOPNOTSUPP;
		goto err_unlock;
	}
	err = 0;
	block->nooffloaddevcnt++;
	FUNC3(block, dev, ei, FLOW_BLOCK_BIND, extack);
err_unlock:
	FUNC6(&block->cb_lock);
	return err;
}