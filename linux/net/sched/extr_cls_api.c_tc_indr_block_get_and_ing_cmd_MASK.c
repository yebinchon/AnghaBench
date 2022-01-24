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
struct tcf_block {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  flow_indr_block_bind_cb_t ;
typedef  enum flow_block_command { ____Placeholder_flow_block_command } flow_block_command ;

/* Variables and functions */
 struct tcf_block* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct tcf_block*,int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
					  flow_indr_block_bind_cb_t *cb,
					  void *cb_priv,
					  enum flow_block_command command)
{
	struct tcf_block *block = FUNC0(dev);

	FUNC1(dev, block, cb, cb_priv, command);
}