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
struct nft_base_chain {int /*<<< orphan*/  flow_block; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct flow_block_offload {int command; int /*<<< orphan*/  cb_list; struct netlink_ext_ack* extack; int /*<<< orphan*/  binder_type; int /*<<< orphan*/ * block; int /*<<< orphan*/  net; } ;
typedef  enum flow_block_command { ____Placeholder_flow_block_command } flow_block_command ;
struct TYPE_2__ {int (* ndo_setup_tc ) (struct net_device*,int /*<<< orphan*/ ,struct flow_block_offload*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TC_SETUP_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct nft_base_chain*,struct flow_block_offload*,int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,struct flow_block_offload*) ; 

__attribute__((used)) static int FUNC4(struct nft_base_chain *chain,
				 struct net_device *dev,
				 enum flow_block_command cmd)
{
	struct netlink_ext_ack extack = {};
	struct flow_block_offload bo = {};
	int err;

	bo.net = FUNC1(dev);
	bo.block = &chain->flow_block;
	bo.command = cmd;
	bo.binder_type = FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS;
	bo.extack = &extack;
	FUNC0(&bo.cb_list);

	err = dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_BLOCK, &bo);
	if (err < 0)
		return err;

	return FUNC2(chain, &bo, cmd);
}