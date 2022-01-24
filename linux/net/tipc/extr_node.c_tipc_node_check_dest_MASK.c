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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  namedq; int /*<<< orphan*/  link; } ;
struct tipc_node {scalar_t__ signature; int link_cnt; scalar_t__ state; int /*<<< orphan*/  timer; int /*<<< orphan*/  keepalive_intv; TYPE_1__ bc_entry; int /*<<< orphan*/  net; int /*<<< orphan*/  capabilities; struct tipc_link_entry* links; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_link_entry {int /*<<< orphan*/  maddr; struct tipc_link* link; int /*<<< orphan*/  inputq; } ;
struct tipc_link {int dummy; } ;
struct tipc_bearer {size_t identity; int /*<<< orphan*/  window; int /*<<< orphan*/  priority; int /*<<< orphan*/  mtu; int /*<<< orphan*/  net_plane; int /*<<< orphan*/  tolerance; int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_FAILOVER_BEGIN_EVT ; 
 int /*<<< orphan*/  LINK_RESET_EVT ; 
 scalar_t__ NODE_FAILINGOVER ; 
 int /*<<< orphan*/  TIPC_DUMP_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tipc_media_addr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tipc_media_addr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tipc_link**) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_link*) ; 
 scalar_t__ FUNC10 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_node*,struct tipc_link*) ; 
 struct tipc_node* FUNC13 (struct net*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_node*,size_t,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC19 (struct net*) ; 
 int /*<<< orphan*/  FUNC20 (struct tipc_link*,int /*<<< orphan*/ ,char*) ; 

void FUNC21(struct net *net, u32 addr,
			  u8 *peer_id, struct tipc_bearer *b,
			  u16 capabilities, u32 signature,
			  struct tipc_media_addr *maddr,
			  bool *respond, bool *dupl_addr)
{
	struct tipc_node *n;
	struct tipc_link *l;
	struct tipc_link_entry *le;
	bool addr_match = false;
	bool sign_match = false;
	bool link_up = false;
	bool accept_addr = false;
	bool reset = true;
	char *if_name;
	unsigned long intv;
	u16 session;

	*dupl_addr = false;
	*respond = false;

	n = FUNC13(net, addr, peer_id, capabilities);
	if (!n)
		return;

	FUNC17(n);

	le = &n->links[b->identity];

	/* Prepare to validate requesting node's signature and media address */
	l = le->link;
	link_up = l && FUNC10(l);
	addr_match = l && !FUNC1(&le->maddr, maddr, sizeof(*maddr));
	sign_match = (signature == n->signature);

	/* These three flags give us eight permutations: */

	if (sign_match && addr_match && link_up) {
		/* All is fine. Do nothing. */
		reset = false;
	} else if (sign_match && addr_match && !link_up) {
		/* Respond. The link will come up in due time */
		*respond = true;
	} else if (sign_match && !addr_match && link_up) {
		/* Peer has changed i/f address without rebooting.
		 * If so, the link will reset soon, and the next
		 * discovery will be accepted. So we can ignore it.
		 * It may also be an cloned or malicious peer having
		 * chosen the same node address and signature as an
		 * existing one.
		 * Ignore requests until the link goes down, if ever.
		 */
		*dupl_addr = true;
	} else if (sign_match && !addr_match && !link_up) {
		/* Peer link has changed i/f address without rebooting.
		 * It may also be a cloned or malicious peer; we can't
		 * distinguish between the two.
		 * The signature is correct, so we must accept.
		 */
		accept_addr = true;
		*respond = true;
	} else if (!sign_match && addr_match && link_up) {
		/* Peer node rebooted. Two possibilities:
		 *  - Delayed re-discovery; this link endpoint has already
		 *    reset and re-established contact with the peer, before
		 *    receiving a discovery message from that node.
		 *    (The peer happened to receive one from this node first).
		 *  - The peer came back so fast that our side has not
		 *    discovered it yet. Probing from this side will soon
		 *    reset the link, since there can be no working link
		 *    endpoint at the peer end, and the link will re-establish.
		 *  Accept the signature, since it comes from a known peer.
		 */
		n->signature = signature;
	} else if (!sign_match && addr_match && !link_up) {
		/*  The peer node has rebooted.
		 *  Accept signature, since it is a known peer.
		 */
		n->signature = signature;
		*respond = true;
	} else if (!sign_match && !addr_match && link_up) {
		/* Peer rebooted with new address, or a new/duplicate peer.
		 * Ignore until the link goes down, if ever.
		 */
		*dupl_addr = true;
	} else if (!sign_match && !addr_match && !link_up) {
		/* Peer rebooted with new address, or it is a new peer.
		 * Accept signature and address.
		 */
		n->signature = signature;
		accept_addr = true;
		*respond = true;
	}

	if (!accept_addr)
		goto exit;

	/* Now create new link if not already existing */
	if (!l) {
		if (n->link_cnt == 2)
			goto exit;

		if_name = FUNC5(b->name, ':') + 1;
		FUNC0(&session, sizeof(u16));
		if (!FUNC7(net, if_name, b->identity, b->tolerance,
				      b->net_plane, b->mtu, b->priority,
				      b->window, session,
				      FUNC19(net), addr, peer_id,
				      n->capabilities,
				      FUNC6(n->net), n->bc_entry.link,
				      &le->inputq,
				      &n->bc_entry.namedq, &l)) {
			*respond = false;
			goto exit;
		}
		FUNC20(l, TIPC_DUMP_ALL, "link created!");
		FUNC11(l);
		FUNC8(l, LINK_RESET_EVT);
		if (n->state == NODE_FAILINGOVER)
			FUNC8(l, LINK_FAILOVER_BEGIN_EVT);
		le->link = l;
		n->link_cnt++;
		FUNC12(n, l);
		if (n->link_cnt == 1) {
			intv = jiffies + FUNC4(n->keepalive_intv);
			if (!FUNC3(&n->timer, intv))
				FUNC14(n);
		}
	}
	FUNC2(&le->maddr, maddr, sizeof(*maddr));
exit:
	FUNC18(n);
	if (reset && l && !FUNC9(l))
		FUNC15(n, b->identity, false);
	FUNC16(n);
}