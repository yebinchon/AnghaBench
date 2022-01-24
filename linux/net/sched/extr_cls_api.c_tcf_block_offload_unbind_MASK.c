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
struct net_device {TYPE_1__* netdev_ops; } ;
struct Qdisc {TYPE_2__* dev_queue; } ;
struct TYPE_4__ {struct net_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ndo_setup_tc; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FLOW_BLOCK_UNBIND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_block*,struct net_device*,struct tcf_block_ext_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tcf_block*,struct net_device*,struct tcf_block_ext_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tcf_block *block, struct Qdisc *q,
				     struct tcf_block_ext_info *ei)
{
	struct net_device *dev = q->dev_queue->dev;
	int err;

	FUNC1(&block->cb_lock);
	FUNC2(block, dev, ei, FLOW_BLOCK_UNBIND, NULL);

	if (!dev->netdev_ops->ndo_setup_tc)
		goto no_offload_dev_dec;
	err = FUNC3(block, dev, ei, FLOW_BLOCK_UNBIND, NULL);
	if (err == -EOPNOTSUPP)
		goto no_offload_dev_dec;
	FUNC4(&block->cb_lock);
	return;

no_offload_dev_dec:
	FUNC0(block->nooffloaddevcnt-- == 0);
	FUNC4(&block->cb_lock);
}