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
struct tcphdr {int doff; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {scalar_t__ sk_state; struct sk_buff* sk_rx_skb_cache; } ;
struct sk_buff {scalar_t__ pkt_type; int /*<<< orphan*/ * dev; scalar_t__ data; } ;
struct request_sock {struct sock* rsk_listener; } ;
struct net {int dummy; } ;
struct iphdr {scalar_t__ ttl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_2__ {scalar_t__ min_ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  LINUX_MIB_TCPMINTTLDROP ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  TCP_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  TCP_MIB_INERRS ; 
 int /*<<< orphan*/  TCP_MIB_INSEGS ; 
 scalar_t__ TCP_NEW_SYN_RECV ; 
 scalar_t__ TCP_TIME_WAIT ; 
#define  TCP_TW_ACK 131 
#define  TCP_TW_RST 130 
#define  TCP_TW_SUCCESS 129 
#define  TCP_TW_SYN 128 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC2 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcphdr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inet_compute_pseudo ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sock* FUNC10 (struct net*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct request_sock* FUNC11 (struct sock*) ; 
 int FUNC12 (struct sk_buff*) ; 
 TYPE_1__* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 scalar_t__ FUNC24 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 scalar_t__ FUNC28 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC29 (struct sock*,struct sk_buff*,struct request_sock*,int,int*) ; 
 scalar_t__ FUNC30 (struct sk_buff*) ; 
 scalar_t__ FUNC31 (struct sock*,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC32 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  tcp_hashinfo ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (struct sock*) ; 
 int FUNC35 (int /*<<< orphan*/ ,struct sk_buff*,struct tcphdr const*) ; 
 int FUNC36 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (struct sk_buff*,struct iphdr const*,struct tcphdr const*) ; 
 int FUNC38 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC39 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC40 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC41 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC42 (int) ; 
 int /*<<< orphan*/  FUNC43 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC44(struct sk_buff *skb)
{
	struct net *net = FUNC7(skb->dev);
	struct sk_buff *skb_to_free;
	int sdif = FUNC12(skb);
	const struct iphdr *iph;
	const struct tcphdr *th;
	bool refcounted;
	struct sock *sk;
	int ret;

	if (skb->pkt_type != PACKET_HOST)
		goto discard_it;

	/* Count it even if it's bad */
	FUNC1(net, TCP_MIB_INSEGS);

	if (!FUNC20(skb, sizeof(struct tcphdr)))
		goto discard_it;

	th = (const struct tcphdr *)skb->data;

	if (FUNC42(th->doff < sizeof(struct tcphdr) / 4))
		goto bad_packet;
	if (!FUNC20(skb, th->doff * 4))
		goto discard_it;

	/* An explanation is required here, I think.
	 * Packet length and doff are validated by header prediction,
	 * provided case of th->doff==0 is eliminated.
	 * So, we defer the checks. */

	if (FUNC24(skb, IPPROTO_TCP, inet_compute_pseudo))
		goto csum_error;

	th = (const struct tcphdr *)skb->data;
	iph = FUNC17(skb);
lookup:
	sk = FUNC2(&tcp_hashinfo, skb, FUNC4(th), th->source,
			       th->dest, sdif, &refcounted);
	if (!sk)
		goto no_tcp_socket;

process:
	if (sk->sk_state == TCP_TIME_WAIT)
		goto do_time_wait;

	if (sk->sk_state == TCP_NEW_SYN_RECV) {
		struct request_sock *req = FUNC11(sk);
		bool req_stolen = false;
		struct sock *nsk;

		sk = req->rsk_listener;
		if (FUNC42(FUNC38(sk, skb))) {
			FUNC22(sk, skb);
			FUNC21(req);
			goto discard_it;
		}
		if (FUNC30(skb)) {
			FUNC21(req);
			goto csum_error;
		}
		if (FUNC42(sk->sk_state != TCP_LISTEN)) {
			FUNC8(sk, req);
			goto lookup;
		}
		/* We own a reference on the listener, increase it again
		 * as we might lose it too soon.
		 */
		FUNC25(sk);
		refcounted = true;
		nsk = NULL;
		if (!FUNC32(sk, skb)) {
			th = (const struct tcphdr *)skb->data;
			iph = FUNC17(skb);
			FUNC37(skb, iph, th);
			nsk = FUNC29(sk, skb, req, false, &req_stolen);
		}
		if (!nsk) {
			FUNC21(req);
			if (req_stolen) {
				/* Another cpu got exclusive access to req
				 * and created a full blown socket.
				 * Try to feed this packet to this socket
				 * instead of discarding it.
				 */
				FUNC39(skb);
				FUNC27(sk);
				goto lookup;
			}
			goto discard_and_relse;
		}
		if (nsk == sk) {
			FUNC21(req);
			FUNC39(skb);
		} else if (FUNC31(sk, nsk, skb)) {
			FUNC40(nsk, skb);
			goto discard_and_relse;
		} else {
			FUNC27(sk);
			return 0;
		}
	}
	if (FUNC42(iph->ttl < FUNC13(sk)->min_ttl)) {
		FUNC0(net, LINUX_MIB_TCPMINTTLDROP);
		goto discard_and_relse;
	}

	if (!FUNC43(sk, XFRM_POLICY_IN, skb))
		goto discard_and_relse;

	if (FUNC38(sk, skb))
		goto discard_and_relse;

	FUNC19(skb);

	if (FUNC32(sk, skb))
		goto discard_and_relse;
	th = (const struct tcphdr *)skb->data;
	iph = FUNC17(skb);
	FUNC37(skb, iph, th);

	skb->dev = NULL;

	if (sk->sk_state == TCP_LISTEN) {
		ret = FUNC36(sk, skb);
		goto put_and_return;
	}

	FUNC23(sk);

	FUNC5(sk);
	FUNC33(FUNC34(sk), skb);
	ret = 0;
	if (!FUNC26(sk)) {
		skb_to_free = sk->sk_rx_skb_cache;
		sk->sk_rx_skb_cache = NULL;
		ret = FUNC36(sk, skb);
	} else {
		if (FUNC28(sk, skb))
			goto discard_and_relse;
		skb_to_free = NULL;
	}
	FUNC6(sk);
	if (skb_to_free)
		FUNC3(skb_to_free);

put_and_return:
	if (refcounted)
		FUNC27(sk);

	return ret;

no_tcp_socket:
	if (!FUNC43(NULL, XFRM_POLICY_IN, skb))
		goto discard_it;

	FUNC37(skb, iph, th);

	if (FUNC30(skb)) {
csum_error:
		FUNC1(net, TCP_MIB_CSUMERRORS);
bad_packet:
		FUNC1(net, TCP_MIB_INERRS);
	} else {
		FUNC40(NULL, skb);
	}

discard_it:
	/* Discard frame. */
	FUNC18(skb);
	return 0;

discard_and_relse:
	FUNC22(sk, skb);
	if (refcounted)
		FUNC27(sk);
	goto discard_it;

do_time_wait:
	if (!FUNC43(NULL, XFRM_POLICY_IN, skb)) {
		FUNC16(FUNC14(sk));
		goto discard_it;
	}

	FUNC37(skb, iph, th);

	if (FUNC30(skb)) {
		FUNC16(FUNC14(sk));
		goto csum_error;
	}
	switch (FUNC35(FUNC14(sk), skb, th)) {
	case TCP_TW_SYN: {
		struct sock *sk2 = FUNC10(FUNC7(skb->dev),
							&tcp_hashinfo, skb,
							FUNC4(th),
							iph->saddr, th->source,
							iph->daddr, th->dest,
							FUNC9(skb),
							sdif);
		if (sk2) {
			FUNC15(FUNC14(sk));
			sk = sk2;
			FUNC39(skb);
			refcounted = false;
			goto process;
		}
	}
		/* to ACK */
		/* fall through */
	case TCP_TW_ACK:
		FUNC41(sk, skb);
		break;
	case TCP_TW_RST:
		FUNC40(sk, skb);
		FUNC15(FUNC14(sk));
		goto discard_it;
	case TCP_TW_SUCCESS:;
	}
	goto discard_it;
}