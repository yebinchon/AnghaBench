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
struct tcf_block_ext_info {int dummy; } ;
struct tcf_block {int /*<<< orphan*/  net; int /*<<< orphan*/  lock; int /*<<< orphan*/  chain_list; int /*<<< orphan*/  refcnt; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_block*,struct Qdisc*,struct tcf_block_ext_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct tcf_block*) ; 

__attribute__((used)) static void FUNC8(struct tcf_block *block, struct Qdisc *q,
			    struct tcf_block_ext_info *ei, bool rtnl_held)
{
	if (FUNC2(&block->refcnt, &block->lock)) {
		/* Flushing/putting all chains will cause the block to be
		 * deallocated when last chain is freed. However, if chain_list
		 * is empty, block has to be manually deallocated. After block
		 * reference counter reached 0, it is no longer possible to
		 * increment it or add new chains to block.
		 */
		bool free_block = FUNC0(&block->chain_list);

		FUNC1(&block->lock);
		if (FUNC7(block))
			FUNC6(block, block->net);

		if (q)
			FUNC5(block, q, ei);

		if (free_block)
			FUNC3(block);
		else
			FUNC4(block, rtnl_held);
	} else if (q) {
		FUNC5(block, q, ei);
	}
}