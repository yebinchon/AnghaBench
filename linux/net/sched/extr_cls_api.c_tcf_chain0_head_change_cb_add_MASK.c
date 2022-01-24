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
struct tcf_proto {int dummy; } ;
struct tcf_filter_chain_list_item {int /*<<< orphan*/  list; int /*<<< orphan*/  chain_head_change_priv; int /*<<< orphan*/  chain_head_change; } ;
struct tcf_chain {int /*<<< orphan*/  filter_chain_lock; int /*<<< orphan*/  filter_chain; } ;
struct tcf_block_ext_info {int /*<<< orphan*/  chain_head_change_priv; int /*<<< orphan*/  chain_head_change; } ;
struct TYPE_2__ {int /*<<< orphan*/  filter_chain_list; struct tcf_chain* chain; } ;
struct tcf_block {int /*<<< orphan*/  lock; TYPE_1__ chain0; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct tcf_filter_chain_list_item* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tcf_proto* FUNC5 (int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_filter_chain_list_item*,struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_chain*) ; 

__attribute__((used)) static int
FUNC9(struct tcf_block *block,
			      struct tcf_block_ext_info *ei,
			      struct netlink_ext_ack *extack)
{
	struct tcf_filter_chain_list_item *item;
	struct tcf_chain *chain0;

	item = FUNC1(sizeof(*item), GFP_KERNEL);
	if (!item) {
		FUNC0(extack, "Memory allocation for head change callback item failed");
		return -ENOMEM;
	}
	item->chain_head_change = ei->chain_head_change;
	item->chain_head_change_priv = ei->chain_head_change_priv;

	FUNC3(&block->lock);
	chain0 = block->chain0.chain;
	if (chain0)
		FUNC7(chain0);
	else
		FUNC2(&item->list, &block->chain0.filter_chain_list);
	FUNC4(&block->lock);

	if (chain0) {
		struct tcf_proto *tp_head;

		FUNC3(&chain0->filter_chain_lock);

		tp_head = FUNC5(chain0->filter_chain, chain0);
		if (tp_head)
			FUNC6(item, tp_head);

		FUNC3(&block->lock);
		FUNC2(&item->list, &block->chain0.filter_chain_list);
		FUNC4(&block->lock);

		FUNC4(&chain0->filter_chain_lock);
		FUNC8(chain0);
	}

	return 0;
}