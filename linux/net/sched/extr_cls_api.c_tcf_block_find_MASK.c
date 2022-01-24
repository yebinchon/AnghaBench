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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct tcf_block* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct tcf_block*) ; 
 int FUNC3 (struct tcf_block*) ; 
 struct tcf_block* FUNC4 (struct net*,struct Qdisc*,unsigned long,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC5 (struct Qdisc*,int /*<<< orphan*/ ,unsigned long*,int,struct netlink_ext_ack*) ; 
 int FUNC6 (struct net*,struct Qdisc**,int /*<<< orphan*/ *,int,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 

__attribute__((used)) static struct tcf_block *FUNC8(struct net *net, struct Qdisc **q,
					u32 *parent, unsigned long *cl,
					int ifindex, u32 block_index,
					struct netlink_ext_ack *extack)
{
	struct tcf_block *block;
	int err = 0;

	FUNC0();

	err = FUNC6(net, q, parent, ifindex, true, extack);
	if (err)
		goto errout;

	err = FUNC5(*q, *parent, cl, ifindex, extack);
	if (err)
		goto errout_qdisc;

	block = FUNC4(net, *q, *cl, ifindex, block_index, extack);
	if (FUNC2(block)) {
		err = FUNC3(block);
		goto errout_qdisc;
	}

	return block;

errout_qdisc:
	if (*q)
		FUNC7(*q);
errout:
	*q = NULL;
	return FUNC1(err);
}