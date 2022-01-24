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
struct tipc_node {int* active_links; int /*<<< orphan*/  net; int /*<<< orphan*/  action_flags; int /*<<< orphan*/  addr; TYPE_1__* links; int /*<<< orphan*/  link_id; int /*<<< orphan*/  working_links; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ mtu; struct tipc_link* link; } ;

/* Variables and functions */
 scalar_t__ INT_H_SIZE ; 
 int /*<<< orphan*/  LINK_ESTABLISH_EVT ; 
 int /*<<< orphan*/  SELF_ESTABL_CONTACT_EVT ; 
 int /*<<< orphan*/  SYNCH_MSG ; 
 int /*<<< orphan*/  TIPC_NOTIFY_LINK_UP ; 
 int /*<<< orphan*/  TIPC_NOTIFY_NODE_UP ; 
 struct tipc_link* FUNC0 (struct tipc_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tipc_link*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_link*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_link*) ; 
 scalar_t__ FUNC8 (struct tipc_link*) ; 
 scalar_t__ FUNC9 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_link*) ; 
 scalar_t__ FUNC12 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_link*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_link*,struct tipc_link*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_node*,int,char*) ; 

__attribute__((used)) static void FUNC17(struct tipc_node *n, int bearer_id,
				struct sk_buff_head *xmitq)
{
	int *slot0 = &n->active_links[0];
	int *slot1 = &n->active_links[1];
	struct tipc_link *ol = FUNC0(n, 0);
	struct tipc_link *nl = n->links[bearer_id].link;

	if (!nl || FUNC8(nl))
		return;

	FUNC6(nl, LINK_ESTABLISH_EVT);
	if (!FUNC8(nl))
		return;

	n->working_links++;
	n->action_flags |= TIPC_NOTIFY_LINK_UP;
	n->link_id = FUNC7(nl);

	/* Leave room for tunnel header when returning 'mtu' to users: */
	n->links[bearer_id].mtu = FUNC9(nl) - INT_H_SIZE;

	FUNC4(n->net, bearer_id, n->addr);
	FUNC3(n->net, bearer_id);

	FUNC1("Established link <%s> on network plane %c\n",
		 FUNC10(nl), FUNC11(nl));
	FUNC16(n, true, " ");

	/* Ensure that a STATE message goes first */
	FUNC5(nl, xmitq);

	/* First link? => give it both slots */
	if (!ol) {
		*slot0 = bearer_id;
		*slot1 = bearer_id;
		FUNC15(n, SELF_ESTABL_CONTACT_EVT);
		n->action_flags |= TIPC_NOTIFY_NODE_UP;
		FUNC13(nl, true);
		FUNC2(n->net, nl, xmitq);
		return;
	}

	/* Second link => redistribute slots */
	if (FUNC12(nl) > FUNC12(ol)) {
		FUNC1("Old link <%s> becomes standby\n", FUNC10(ol));
		*slot0 = bearer_id;
		*slot1 = bearer_id;
		FUNC13(nl, true);
		FUNC13(ol, false);
	} else if (FUNC12(nl) == FUNC12(ol)) {
		FUNC13(nl, true);
		*slot1 = bearer_id;
	} else {
		FUNC1("New link <%s> is standby\n", FUNC10(nl));
	}

	/* Prepare synchronization with first link */
	FUNC14(ol, nl, SYNCH_MSG, xmitq);
}