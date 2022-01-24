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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  filter_chain_list; } ;
struct tcf_block {struct Qdisc* q; int /*<<< orphan*/  index; struct net* net; int /*<<< orphan*/  refcnt; TYPE_1__ chain0; int /*<<< orphan*/  owner_list; int /*<<< orphan*/  chain_list; int /*<<< orphan*/  flow_block; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  proto_destroy_lock; int /*<<< orphan*/  lock; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tcf_block* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tcf_block* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_block*) ; 

__attribute__((used)) static struct tcf_block *FUNC9(struct net *net, struct Qdisc *q,
					  u32 block_index,
					  struct netlink_ext_ack *extack)
{
	struct tcf_block *block;

	block = FUNC5(sizeof(*block), GFP_KERNEL);
	if (!block) {
		FUNC2(extack, "Memory allocation for block failed");
		return FUNC0(-ENOMEM);
	}
	FUNC6(&block->lock);
	FUNC6(&block->proto_destroy_lock);
	FUNC4(&block->cb_lock);
	FUNC3(&block->flow_block);
	FUNC1(&block->chain_list);
	FUNC1(&block->owner_list);
	FUNC1(&block->chain0.filter_chain_list);

	FUNC7(&block->refcnt, 1);
	block->net = net;
	block->index = block_index;

	/* Don't store q pointer for blocks which are shared */
	if (!FUNC8(block))
		block->q = q;
	return block;
}