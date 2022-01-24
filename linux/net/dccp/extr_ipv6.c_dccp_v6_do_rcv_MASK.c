#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  len; } ;
struct TYPE_8__ {scalar_t__ rxtclass; scalar_t__ rxflow; scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_9__ {TYPE_1__ bits; scalar_t__ all; } ;
struct ipv6_pinfo {int /*<<< orphan*/  pktoptions; int /*<<< orphan*/  flow_label; scalar_t__ repflow; int /*<<< orphan*/  rcv_flowinfo; TYPE_2__ rxopt; int /*<<< orphan*/  mcast_hops; int /*<<< orphan*/  mcast_oif; } ;
struct inet6_skb_parm {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  h6; } ;
struct TYPE_12__ {TYPE_3__ header; } ;
struct TYPE_11__ {int /*<<< orphan*/  hop_limit; } ;

/* Variables and functions */
 int DCCPF_CLOSED ; 
 int DCCPF_LISTEN ; 
 int DCCP_OPEN ; 
 TYPE_7__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 TYPE_4__* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC17 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,struct sock*) ; 
 struct sk_buff* FUNC20 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC21(struct sock *sk, struct sk_buff *skb)
{
	struct ipv6_pinfo *np = FUNC10(sk);
	struct sk_buff *opt_skb = NULL;

	/* Imagine: socket is IPv6. IPv4 packet arrives,
	   goes to IPv4 receive handler and backlogged.
	   From backlog it always goes here. Kerboom...
	   Fortunately, dccp_rcv_established and rcv_established
	   handle them correctly, but it is not case with
	   dccp_v6_hnd_req and dccp_v6_ctl_send_reset().   --ANK
	 */

	if (skb->protocol == FUNC8(ETH_P_IP))
		return FUNC6(sk, skb);

	if (FUNC17(sk, skb))
		goto discard;

	/*
	 * socket locking is here for SMP purposes as backlog rcv is currently
	 * called with bh processing disabled.
	 */

	/* Do Stevens' IPV6_PKTOPTIONS.

	   Yes, guys, it is the only place in our code, where we
	   may make it not affecting IPv4.
	   The rest of code is protocol independent,
	   and I do not like idea to uglify IPv4.

	   Actually, all the idea behind IPV6_PKTOPTIONS
	   looks not very well thought. For now we latch
	   options, received in the last packet, enqueued
	   by tcp. Feel free to propose better solution.
					       --ANK (980728)
	 */
	if (np->rxopt.all)
		opt_skb = FUNC18(skb, GFP_ATOMIC);

	if (sk->sk_state == DCCP_OPEN) { /* Fast path */
		if (FUNC4(sk, skb, FUNC3(skb), skb->len))
			goto reset;
		if (opt_skb)
			goto ipv6_pktoptions;
		return 0;
	}

	/*
	 *  Step 3: Process LISTEN state
	 *     If S.state == LISTEN,
	 *	 If P.type == Request or P contains a valid Init Cookie option,
	 *	      (* Must scan the packet's options to check for Init
	 *		 Cookies.  Only Init Cookies are processed here,
	 *		 however; other options are processed in Step 8.  This
	 *		 scan need only be performed if the endpoint uses Init
	 *		 Cookies *)
	 *	      (* Generate a new socket and switch to that socket *)
	 *	      Set S := new socket for this port pair
	 *	      S.state = RESPOND
	 *	      Choose S.ISS (initial seqno) or set from Init Cookies
	 *	      Initialize S.GAR := S.ISS
	 *	      Set S.ISR, S.GSR, S.SWL, S.SWH from packet or Init Cookies
	 *	      Continue with S.state == RESPOND
	 *	      (* A Response packet will be generated in Step 11 *)
	 *	 Otherwise,
	 *	      Generate Reset(No Connection) unless P.type == Reset
	 *	      Drop packet and return
	 *
	 * NOTE: the check for the packet types is done in
	 *	 dccp_rcv_state_process
	 */

	if (FUNC5(sk, skb, FUNC3(skb), skb->len))
		goto reset;
	if (opt_skb)
		goto ipv6_pktoptions;
	return 0;

reset:
	FUNC7(sk, skb);
discard:
	if (opt_skb != NULL)
		FUNC2(opt_skb);
	FUNC15(skb);
	return 0;

/* Handling IPV6_PKTOPTIONS skb the similar
 * way it's done for net/ipv6/tcp_ipv6.c
 */
ipv6_pktoptions:
	if (!((1 << sk->sk_state) & (DCCPF_CLOSED | DCCPF_LISTEN))) {
		if (np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo)
			np->mcast_oif = FUNC9(opt_skb);
		if (np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim)
			np->mcast_hops = FUNC13(opt_skb)->hop_limit;
		if (np->rxopt.bits.rxflow || np->rxopt.bits.rxtclass)
			np->rcv_flowinfo = FUNC11(FUNC13(opt_skb));
		if (np->repflow)
			np->flow_label = FUNC12(FUNC13(opt_skb));
		if (FUNC14(sk, opt_skb,
				      &FUNC0(opt_skb)->header.h6)) {
			FUNC19(opt_skb, sk);
			FUNC16(FUNC1(opt_skb),
				&FUNC0(opt_skb)->header.h6,
				sizeof(struct inet6_skb_parm));
			opt_skb = FUNC20(&np->pktoptions, opt_skb);
		} else {
			FUNC2(opt_skb);
			opt_skb = FUNC20(&np->pktoptions, NULL);
		}
	}

	FUNC15(opt_skb);
	return 0;
}