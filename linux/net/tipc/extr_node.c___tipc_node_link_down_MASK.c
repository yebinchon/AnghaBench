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
struct tipc_node {int* active_links; struct tipc_link_entry* links; scalar_t__ sync_point; int /*<<< orphan*/  net; int /*<<< orphan*/  addr; int /*<<< orphan*/  link_id; int /*<<< orphan*/  action_flags; int /*<<< orphan*/  working_links; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_link_entry {struct tipc_media_addr maddr; struct tipc_link* link; int /*<<< orphan*/  inputq; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILOVER_MSG ; 
 int INVALID_BEARER_ID ; 
 int /*<<< orphan*/  LINK_FAILOVER_BEGIN_EVT ; 
 int /*<<< orphan*/  LINK_RESET_EVT ; 
 int /*<<< orphan*/  LINK_SYNCH_END_EVT ; 
 int MAX_BEARERS ; 
 int /*<<< orphan*/  NODE_FAILOVER_BEGIN_EVT ; 
 int /*<<< orphan*/  NODE_SYNCH_END_EVT ; 
 int /*<<< orphan*/  PEER_LOST_CONTACT_EVT ; 
 int /*<<< orphan*/  SELF_LOST_CONTACT_EVT ; 
 int /*<<< orphan*/  TIPC_DUMP_ALL ; 
 int /*<<< orphan*/  TIPC_NOTIFY_LINK_DOWN ; 
 int U16_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_link*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_link*) ; 
 scalar_t__ FUNC8 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_link*) ; 
 scalar_t__ FUNC11 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_link*) ; 
 int FUNC13 (struct tipc_link*) ; 
 scalar_t__ FUNC14 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_link*,struct tipc_link*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tipc_link*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC19(struct tipc_node *n, int *bearer_id,
				  struct sk_buff_head *xmitq,
				  struct tipc_media_addr **maddr)
{
	struct tipc_link_entry *le = &n->links[*bearer_id];
	int *slot0 = &n->active_links[0];
	int *slot1 = &n->active_links[1];
	int i, highest = 0, prio;
	struct tipc_link *l, *_l, *tnl;

	l = n->links[*bearer_id].link;
	if (!l || FUNC8(l))
		return;

	n->working_links--;
	n->action_flags |= TIPC_NOTIFY_LINK_DOWN;
	n->link_id = FUNC7(l);

	FUNC4(n->net, *bearer_id, n->addr);

	FUNC2("Lost link <%s> on network plane %c\n",
		 FUNC10(l), FUNC12(l));

	/* Select new active link if any available */
	*slot0 = INVALID_BEARER_ID;
	*slot1 = INVALID_BEARER_ID;
	for (i = 0; i < MAX_BEARERS; i++) {
		_l = n->links[i].link;
		if (!_l || !FUNC9(_l))
			continue;
		if (_l == l)
			continue;
		prio = FUNC13(_l);
		if (prio < highest)
			continue;
		if (prio > highest) {
			highest = prio;
			*slot0 = i;
			*slot1 = i;
			continue;
		}
		*slot1 = i;
	}

	if (!FUNC0(n)) {
		if (FUNC11(l))
			FUNC17(n, PEER_LOST_CONTACT_EVT);
		FUNC17(n, SELF_LOST_CONTACT_EVT);
		FUNC18(l, TIPC_DUMP_ALL, "link down!");
		FUNC6(l, LINK_RESET_EVT);
		FUNC15(l);
		FUNC5(l, xmitq);
		*maddr = &n->links[*bearer_id].maddr;
		FUNC1(n, &le->inputq);
		FUNC3(n->net, *bearer_id);
		return;
	}
	FUNC3(n->net, *bearer_id);

	/* There is still a working link => initiate failover */
	*bearer_id = n->active_links[0];
	tnl = n->links[*bearer_id].link;
	FUNC6(tnl, LINK_SYNCH_END_EVT);
	FUNC17(n, NODE_SYNCH_END_EVT);
	n->sync_point = FUNC14(tnl) + (U16_MAX / 2 - 1);
	FUNC16(l, tnl, FAILOVER_MSG, xmitq);
	FUNC18(l, TIPC_DUMP_ALL, "link down -> failover!");
	FUNC15(l);
	FUNC6(l, LINK_RESET_EVT);
	FUNC6(l, LINK_FAILOVER_BEGIN_EVT);
	FUNC17(n, NODE_FAILOVER_BEGIN_EVT);
	*maddr = &n->links[*bearer_id].maddr;
}