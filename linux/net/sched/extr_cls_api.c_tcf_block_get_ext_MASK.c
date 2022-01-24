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
struct tcf_block_ext_info {int /*<<< orphan*/  binder_type; int /*<<< orphan*/  block_index; } ;
struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcf_block*) ; 
 int FUNC1 (struct tcf_block*) ; 
 struct net* FUNC2 (struct Qdisc*) ; 
 struct tcf_block* FUNC3 (struct net*,struct Qdisc*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC4 (struct tcf_block*,struct net*,struct netlink_ext_ack*) ; 
 int FUNC5 (struct tcf_block*,struct Qdisc*,struct tcf_block_ext_info*,struct netlink_ext_ack*) ; 
 int FUNC6 (struct tcf_block*,struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_block*,struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_block*,struct Qdisc*,int /*<<< orphan*/ ) ; 
 struct tcf_block* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tcf_block*,int) ; 
 scalar_t__ FUNC11 (struct tcf_block*) ; 
 int FUNC12 (struct tcf_block*,struct tcf_block_ext_info*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_block*,struct tcf_block_ext_info*) ; 

int FUNC14(struct tcf_block **p_block, struct Qdisc *q,
		      struct tcf_block_ext_info *ei,
		      struct netlink_ext_ack *extack)
{
	struct net *net = FUNC2(q);
	struct tcf_block *block = NULL;
	int err;

	if (ei->block_index)
		/* block_index not 0 means the shared block is requested */
		block = FUNC9(net, ei->block_index);

	if (!block) {
		block = FUNC3(net, q, ei->block_index, extack);
		if (FUNC0(block))
			return FUNC1(block);
		if (FUNC11(block)) {
			err = FUNC4(block, net, extack);
			if (err)
				goto err_block_insert;
		}
	}

	err = FUNC6(block, q, ei->binder_type);
	if (err)
		goto err_block_owner_add;

	FUNC8(block, q, ei->binder_type);

	err = FUNC12(block, ei, extack);
	if (err)
		goto err_chain0_head_change_cb_add;

	err = FUNC5(block, q, ei, extack);
	if (err)
		goto err_block_offload_bind;

	*p_block = block;
	return 0;

err_block_offload_bind:
	FUNC13(block, ei);
err_chain0_head_change_cb_add:
	FUNC7(block, q, ei->binder_type);
err_block_owner_add:
err_block_insert:
	FUNC10(block, true);
	return err;
}