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
struct tcf_block {int /*<<< orphan*/  refcnt; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc_class_ops {struct tcf_block* (* tcf_block ) (struct Qdisc*,unsigned long,struct netlink_ext_ack*) ;} ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct tcf_block* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int TCM_IFINDEX_MAGIC_BLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcf_block* FUNC3 (struct Qdisc*,unsigned long,struct netlink_ext_ack*) ; 
 struct tcf_block* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct tcf_block*) ; 

__attribute__((used)) static struct tcf_block *FUNC6(struct net *net, struct Qdisc *q,
					  unsigned long cl, int ifindex,
					  u32 block_index,
					  struct netlink_ext_ack *extack)
{
	struct tcf_block *block;

	if (ifindex == TCM_IFINDEX_MAGIC_BLOCK) {
		block = FUNC4(net, block_index);
		if (!block) {
			FUNC1(extack, "Block of given index was not found");
			return FUNC0(-EINVAL);
		}
	} else {
		const struct Qdisc_class_ops *cops = q->ops->cl_ops;

		block = cops->tcf_block(q, cl, extack);
		if (!block)
			return FUNC0(-EINVAL);

		if (FUNC5(block)) {
			FUNC1(extack, "This filter block is shared. Please use the block index to manipulate the filters");
			return FUNC0(-EOPNOTSUPP);
		}

		/* Always take reference to block in order to support execution
		 * of rules update path of cls API without rtnl lock. Caller
		 * must release block when it is finished using it. 'if' block
		 * of this conditional obtain reference to block by calling
		 * tcf_block_refcnt_get().
		 */
		FUNC2(&block->refcnt);
	}

	return block;
}