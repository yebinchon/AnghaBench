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
typedef  int u16 ;
struct tipc_link {int /*<<< orphan*/  state; struct tipc_link* bc_rcvlink; scalar_t__ ackers; int /*<<< orphan*/  name; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_ESTABLISHED ; 
 int /*<<< orphan*/  LINK_RESET ; 
 int /*<<< orphan*/  MAX_BEARERS ; 
 int TIPC_BCAST_RCAST ; 
 int /*<<< orphan*/  TIPC_DUMP_ALL ; 
 scalar_t__ FUNC0 (struct tipc_link*) ; 
 scalar_t__ FUNC1 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  tipc_bclink_name ; 
 int /*<<< orphan*/  FUNC4 (struct net*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct tipc_link*,int /*<<< orphan*/ *,struct sk_buff_head*,struct sk_buff_head*,struct tipc_link**) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_link*,int /*<<< orphan*/ ,char*) ; 

bool FUNC7(struct net *net, u32 ownnode, u32 peer,
			 int mtu, int window, u16 peer_caps,
			 struct sk_buff_head *inputq,
			 struct sk_buff_head *namedq,
			 struct tipc_link *bc_sndlink,
			 struct tipc_link **link)
{
	struct tipc_link *l;

	if (!FUNC4(net, "", MAX_BEARERS, 0, 'Z', mtu, 0, window,
			      0, ownnode, peer, NULL, peer_caps, bc_sndlink,
			      NULL, inputq, namedq, link))
		return false;

	l = *link;
	FUNC2(l->name, tipc_bclink_name);
	FUNC6(l, TIPC_DUMP_ALL, "bclink created!");
	FUNC5(l);
	l->state = LINK_RESET;
	l->ackers = 0;
	l->bc_rcvlink = l;

	/* Broadcast send link is always up */
	if (FUNC1(l))
		l->state = LINK_ESTABLISHED;

	/* Disable replicast if even a single peer doesn't support it */
	if (FUNC0(l) && !(peer_caps & TIPC_BCAST_RCAST))
		FUNC3(net);

	return true;
}