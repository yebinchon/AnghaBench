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
struct nft_base_chain {int /*<<< orphan*/  flow_block; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct flow_block_offload {int command; int /*<<< orphan*/  cb_list; struct netlink_ext_ack* extack; int /*<<< orphan*/  binder_type; int /*<<< orphan*/ * block; int /*<<< orphan*/  net; } ;
typedef  enum flow_block_command { ____Placeholder_flow_block_command } flow_block_command ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct flow_block_offload*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nft_base_chain*,struct flow_block_offload*,int) ; 

__attribute__((used)) static int FUNC5(struct nft_base_chain *chain,
				      struct net_device *dev,
				      enum flow_block_command cmd)
{
	struct flow_block_offload bo = {};
	struct netlink_ext_ack extack = {};

	bo.net = FUNC1(dev);
	bo.block = &chain->flow_block;
	bo.command = cmd;
	bo.binder_type = FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS;
	bo.extack = &extack;
	FUNC0(&bo.cb_list);

	FUNC2(dev, &bo, cmd);

	if (FUNC3(&bo.cb_list))
		return -EOPNOTSUPP;

	return FUNC4(chain, &bo, cmd);
}