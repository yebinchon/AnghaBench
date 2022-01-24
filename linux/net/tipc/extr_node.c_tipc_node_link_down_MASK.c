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
struct tipc_node {int /*<<< orphan*/  net; int /*<<< orphan*/  addr; int /*<<< orphan*/  link_cnt; struct tipc_link_entry* links; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_link_entry {int /*<<< orphan*/  inputq; struct tipc_link* link; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_RESET_EVT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*,int*,struct sk_buff_head*,struct tipc_media_addr**) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sk_buff_head*,struct tipc_media_addr*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_node*,int,char*) ; 

__attribute__((used)) static void FUNC13(struct tipc_node *n, int bearer_id, bool delete)
{
	struct tipc_link_entry *le = &n->links[bearer_id];
	struct tipc_media_addr *maddr = NULL;
	struct tipc_link *l = le->link;
	int old_bearer_id = bearer_id;
	struct sk_buff_head xmitq;

	if (!l)
		return;

	FUNC0(&xmitq);

	FUNC9(n);
	if (!FUNC6(l)) {
		FUNC1(n, &bearer_id, &xmitq, &maddr);
	} else {
		/* Defuse pending tipc_node_link_up() */
		FUNC7(l);
		FUNC5(l, LINK_RESET_EVT);
	}
	if (delete) {
		FUNC2(l);
		le->link = NULL;
		n->link_cnt--;
	}
	FUNC12(n, true, "node link down or deleted!");
	FUNC10(n);
	if (delete)
		FUNC8(n->net, n->addr, old_bearer_id);
	if (!FUNC3(&xmitq))
		FUNC4(n->net, bearer_id, &xmitq, maddr);
	FUNC11(n->net, &le->inputq);
}