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
struct tipc_node {scalar_t__ sync_point; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_FAILOVER_BEGIN_EVT ; 
 int /*<<< orphan*/  LINK_SYNCH_END_EVT ; 
 int /*<<< orphan*/  NODE_FAILOVER_BEGIN_EVT ; 
 int /*<<< orphan*/  NODE_SYNCH_END_EVT ; 
 int U16_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_link*,struct tipc_link*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_link*) ; 
 scalar_t__ FUNC4 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tipc_node *n, struct tipc_link *l,
				    struct tipc_link *tnl,
				    struct sk_buff_head *xmitq)
{
	/* Avoid to be "self-failover" that can never end */
	if (!FUNC3(tnl))
		return;

	/* Don't rush, failure link may be in the process of resetting */
	if (l && !FUNC2(l))
		return;

	FUNC1(tnl, LINK_SYNCH_END_EVT);
	FUNC5(n, NODE_SYNCH_END_EVT);

	n->sync_point = FUNC4(tnl) + (U16_MAX / 2 - 1);
	FUNC0(l, tnl, xmitq);

	if (l)
		FUNC1(l, LINK_FAILOVER_BEGIN_EVT);
	FUNC5(n, NODE_FAILOVER_BEGIN_EVT);
}