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
struct sk_buff_head {int dummy; } ;
struct tipc_link {int drop_point; int /*<<< orphan*/ * failover_reasm_skb; struct sk_buff_head failover_deferdq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_link*,struct sk_buff_head*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct tipc_link *l, struct tipc_link *tnl,
				struct sk_buff_head *xmitq)
{
	struct sk_buff_head *fdefq = &tnl->failover_deferdq;

	FUNC4(tnl, xmitq);

	/* This failover link enpoint was never established before,
	 * so it has not received anything from peer.
	 * Otherwise, it must be a normal failover situation or the
	 * node has entered SELF_DOWN_PEER_LEAVING and both peer nodes
	 * would have to start over from scratch instead.
	 */
	tnl->drop_point = 1;
	tnl->failover_reasm_skb = NULL;

	/* Initiate the link's failover deferdq */
	if (FUNC5(!FUNC2(fdefq))) {
		FUNC1("Link failover deferdq not empty: %d!\n",
			FUNC3(fdefq));
		FUNC0(fdefq);
	}
}