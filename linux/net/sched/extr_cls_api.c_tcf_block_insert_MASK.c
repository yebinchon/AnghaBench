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
struct tcf_net {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  idr; } ;
struct tcf_block {int /*<<< orphan*/  index; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct tcf_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tcf_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcf_net_id ; 

__attribute__((used)) static int FUNC6(struct tcf_block *block, struct net *net,
			    struct netlink_ext_ack *extack)
{
	struct tcf_net *tn = FUNC3(net, tcf_net_id);
	int err;

	FUNC1(GFP_KERNEL);
	FUNC4(&tn->idr_lock);
	err = FUNC0(&tn->idr, block, &block->index, block->index,
			    GFP_NOWAIT);
	FUNC5(&tn->idr_lock);
	FUNC2();

	return err;
}