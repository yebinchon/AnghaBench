#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {scalar_t__ rcv_nxt; } ;
struct sock {int sk_state; struct dst_entry* sk_rx_dst; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ skb_iif; } ;
struct TYPE_11__ {scalar_t__ rxtclass; scalar_t__ rxflow; scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_12__ {TYPE_2__ bits; scalar_t__ all; } ;
struct ipv6_pinfo {int /*<<< orphan*/  pktoptions; int /*<<< orphan*/  flow_label; scalar_t__ repflow; int /*<<< orphan*/  rcv_flowinfo; TYPE_3__ rxopt; int /*<<< orphan*/  mcast_hops; int /*<<< orphan*/  mcast_oif; int /*<<< orphan*/  rx_dst_cookie; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_13__ {int /*<<< orphan*/  h6; } ;
struct TYPE_16__ {scalar_t__ end_seq; TYPE_4__ header; } ;
struct TYPE_15__ {scalar_t__ rx_dst_ifindex; } ;
struct TYPE_14__ {int /*<<< orphan*/  hop_limit; } ;
struct TYPE_10__ {int /*<<< orphan*/ * (* check ) (struct dst_entry*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 int TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCP_LISTEN ; 
 int /*<<< orphan*/  TCP_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  TCP_MIB_INERRS ; 
 TYPE_9__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 TYPE_5__* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC17 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (struct sock*,struct sock*,struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC22 (struct sock*,struct sk_buff*) ; 
 struct tcp_sock* FUNC23 (struct sock*) ; 
 int FUNC24 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC25 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC29 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC30(struct sock *sk, struct sk_buff *skb)
{
	struct ipv6_pinfo *np = FUNC20(sk);
	struct sk_buff *opt_skb = NULL;
	struct tcp_sock *tp;

	/* Imagine: socket is IPv6. IPv4 packet arrives,
	   goes to IPv4 receive handler and backlogged.
	   From backlog it always goes here. Kerboom...
	   Fortunately, tcp_rcv_established and rcv_established
	   handle them correctly, but it is not case with
	   tcp_v6_hnd_req and tcp_v6_send_reset().   --ANK
	 */

	if (skb->protocol == FUNC4(ETH_P_IP))
		return FUNC24(sk, skb);

	/*
	 *	socket locking is here for SMP purposes as backlog rcv
	 *	is currently called with bh processing disabled.
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
		opt_skb = FUNC13(skb, FUNC11(sk, GFP_ATOMIC));

	if (sk->sk_state == TCP_ESTABLISHED) { /* Fast path */
		struct dst_entry *dst = sk->sk_rx_dst;

		FUNC16(sk, skb);
		FUNC12(sk, skb);
		if (dst) {
			if (FUNC5(sk)->rx_dst_ifindex != skb->skb_iif ||
			    dst->ops->check(dst, np->rx_dst_cookie) == NULL) {
				FUNC3(dst);
				sk->sk_rx_dst = NULL;
			}
		}

		FUNC21(sk, skb);
		if (opt_skb)
			goto ipv6_pktoptions;
		return 0;
	}

	if (FUNC18(skb))
		goto csum_err;

	if (sk->sk_state == TCP_LISTEN) {
		struct sock *nsk = FUNC25(sk, skb);

		if (!nsk)
			goto discard;

		if (nsk != sk) {
			if (FUNC19(sk, nsk, skb))
				goto reset;
			if (opt_skb)
				FUNC2(opt_skb);
			return 0;
		}
	} else
		FUNC16(sk, skb);

	if (FUNC22(sk, skb))
		goto reset;
	if (opt_skb)
		goto ipv6_pktoptions;
	return 0;

reset:
	FUNC28(sk, skb);
discard:
	if (opt_skb)
		FUNC2(opt_skb);
	FUNC10(skb);
	return 0;
csum_err:
	FUNC0(FUNC15(sk), TCP_MIB_CSUMERRORS);
	FUNC0(FUNC15(sk), TCP_MIB_INERRS);
	goto discard;


ipv6_pktoptions:
	/* Do you ask, what is it?

	   1. skb was enqueued by tcp.
	   2. skb is added to tail of read queue, rather than out of order.
	   3. socket is not in passive state.
	   4. Finally, it really contains options, which user wants to receive.
	 */
	tp = FUNC23(sk);
	if (FUNC1(opt_skb)->end_seq == tp->rcv_nxt &&
	    !((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_LISTEN))) {
		if (np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo)
			np->mcast_oif = FUNC26(opt_skb);
		if (np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim)
			np->mcast_hops = FUNC8(opt_skb)->hop_limit;
		if (np->rxopt.bits.rxflow || np->rxopt.bits.rxtclass)
			np->rcv_flowinfo = FUNC6(FUNC8(opt_skb));
		if (np->repflow)
			np->flow_label = FUNC7(FUNC8(opt_skb));
		if (FUNC9(sk, opt_skb, &FUNC1(opt_skb)->header.h6)) {
			FUNC14(opt_skb, sk);
			FUNC27(opt_skb);
			opt_skb = FUNC29(&np->pktoptions, opt_skb);
		} else {
			FUNC2(opt_skb);
			opt_skb = FUNC29(&np->pktoptions, NULL);
		}
	}

	FUNC10(opt_skb);
	return 0;
}