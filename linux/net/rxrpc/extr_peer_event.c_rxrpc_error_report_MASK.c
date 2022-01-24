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
struct sockaddr_rxrpc {int dummy; } ;
struct TYPE_2__ {scalar_t__ ee_origin; scalar_t__ ee_type; scalar_t__ ee_code; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rxrpc_peer {int dummy; } ;
struct rxrpc_local {int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 scalar_t__ ICMP_DEST_UNREACH ; 
 scalar_t__ ICMP_FRAG_NEEDED ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 scalar_t__ SO_EE_ORIGIN_ICMP ; 
 scalar_t__ SO_EE_ORIGIN_TIMESTAMPING ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct rxrpc_local* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_peer*,struct sock_exterr_skb*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_peer*) ; 
 struct rxrpc_peer* FUNC9 (struct rxrpc_local*,struct sk_buff*,struct sockaddr_rxrpc*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rxrpc_peer*) ; 
 int /*<<< orphan*/  rxrpc_skb_freed ; 
 int /*<<< orphan*/  rxrpc_skb_received ; 
 int /*<<< orphan*/  FUNC12 (struct rxrpc_peer*,struct sock_exterr_skb*) ; 
 struct sk_buff* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct rxrpc_peer*,TYPE_1__*,struct sockaddr_rxrpc*) ; 
 scalar_t__ FUNC16 (int) ; 

void FUNC17(struct sock *sk)
{
	struct sock_exterr_skb *serr;
	struct sockaddr_rxrpc srx;
	struct rxrpc_local *local;
	struct rxrpc_peer *peer;
	struct sk_buff *skb;

	FUNC4();
	local = FUNC3(sk);
	if (FUNC16(!local)) {
		FUNC5();
		return;
	}
	FUNC1("%p{%d}", sk, local->debug_id);

	/* Clear the outstanding error value on the socket so that it doesn't
	 * cause kernel_sendmsg() to return it later.
	 */
	FUNC14(sk);

	skb = FUNC13(sk);
	if (!skb) {
		FUNC5();
		FUNC2("UDP socket errqueue empty");
		return;
	}
	FUNC10(skb, rxrpc_skb_received);
	serr = FUNC0(skb);
	if (!skb->len && serr->ee.ee_origin == SO_EE_ORIGIN_TIMESTAMPING) {
		FUNC2("UDP empty message");
		FUNC5();
		FUNC7(skb, rxrpc_skb_freed);
		return;
	}

	peer = FUNC9(local, skb, &srx);
	if (peer && !FUNC8(peer))
		peer = NULL;
	if (!peer) {
		FUNC5();
		FUNC7(skb, rxrpc_skb_freed);
		FUNC2(" [no peer]");
		return;
	}

	FUNC15(peer, &serr->ee, &srx);

	if ((serr->ee.ee_origin == SO_EE_ORIGIN_ICMP &&
	     serr->ee.ee_type == ICMP_DEST_UNREACH &&
	     serr->ee.ee_code == ICMP_FRAG_NEEDED)) {
		FUNC6(peer, serr);
		FUNC5();
		FUNC7(skb, rxrpc_skb_freed);
		FUNC11(peer);
		FUNC2(" [MTU update]");
		return;
	}

	FUNC12(peer, serr);
	FUNC5();
	FUNC7(skb, rxrpc_skb_freed);
	FUNC11(peer);

	FUNC2("");
}