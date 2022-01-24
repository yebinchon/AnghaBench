#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  link; } ;
struct tipc_node {TYPE_2__* links; TYPE_1__ bc_entry; int /*<<< orphan*/  net; } ;
struct tipc_msg {int dummy; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct TYPE_4__ {struct tipc_link* link; } ;

/* Variables and functions */
 int TIPC_LINK_DOWN_EVT ; 
 int TIPC_LINK_SND_STATE ; 
 scalar_t__ FUNC0 (struct tipc_msg*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_link*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_node*) ; 

__attribute__((used)) static void FUNC6(struct tipc_node *n, struct tipc_msg *hdr,
				  int bearer_id, struct sk_buff_head *xmitq)
{
	struct tipc_link *ucl;
	int rc;

	rc = FUNC1(n->net, n->bc_entry.link, hdr);

	if (rc & TIPC_LINK_DOWN_EVT) {
		FUNC5(n);
		return;
	}

	if (!(rc & TIPC_LINK_SND_STATE))
		return;

	/* If probe message, a STATE response will be sent anyway */
	if (FUNC0(hdr))
		return;

	/* Produce a STATE message carrying broadcast NACK */
	FUNC3(n);
	ucl = n->links[bearer_id].link;
	if (ucl)
		FUNC2(ucl, xmitq);
	FUNC4(n);
}