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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {struct sock* rsk_listener; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct dccp_hdr {scalar_t__ dccph_type; int dccph_cscov; int dccph_doff; int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;
struct TYPE_4__ {scalar_t__ dccpd_type; int /*<<< orphan*/  dccpd_reset_code; scalar_t__ dccpd_ack_seq; scalar_t__ dccpd_seq; } ;
struct TYPE_3__ {int dccps_pcrlen; } ;

/* Variables and functions */
 scalar_t__ DCCP_LISTEN ; 
 scalar_t__ DCCP_NEW_SYN_RECV ; 
 scalar_t__ DCCP_PKT_RESET ; 
 scalar_t__ DCCP_PKT_WITHOUT_ACK_SEQ ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_NO_CONNECTION ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ DCCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC2 (struct dccp_hdr const*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int,int,int) ; 
 struct sock* FUNC5 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC6 (struct sock*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  dccp_hashinfo ; 
 struct dccp_hdr* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct dccp_hdr const*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 TYPE_1__* FUNC15 (struct sock*) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,struct request_sock*) ; 
 struct request_sock* FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC31(struct sk_buff *skb)
{
	const struct dccp_hdr *dh;
	const struct iphdr *iph;
	bool refcounted;
	struct sock *sk;
	int min_cov;

	/* Step 1: Check header basics */

	if (FUNC10(skb))
		goto discard_it;

	iph = FUNC22(skb);
	/* Step 1: If header checksum is incorrect, drop packet and return */
	if (FUNC16(skb, iph->saddr, iph->daddr)) {
		FUNC1("dropped packet with invalid checksum\n");
		goto discard_it;
	}

	dh = FUNC7(skb);

	FUNC0(skb)->dccpd_seq  = FUNC9(dh);
	FUNC0(skb)->dccpd_type = dh->dccph_type;

	FUNC13("%8.8s src=%pI4@%-5d dst=%pI4@%-5d seq=%llu",
		      FUNC11(dh->dccph_type),
		      &iph->saddr, FUNC25(dh->dccph_sport),
		      &iph->daddr, FUNC25(dh->dccph_dport),
		      (unsigned long long) FUNC0(skb)->dccpd_seq);

	if (FUNC12(skb)) {
		FUNC0(skb)->dccpd_ack_seq = DCCP_PKT_WITHOUT_ACK_SEQ;
		FUNC14("\n");
	} else {
		FUNC0(skb)->dccpd_ack_seq = FUNC8(skb);
		FUNC14(", ack=%llu\n", (unsigned long long)
				  FUNC0(skb)->dccpd_ack_seq);
	}

lookup:
	sk = FUNC3(&dccp_hashinfo, skb, FUNC2(dh),
			       dh->dccph_sport, dh->dccph_dport, 0, &refcounted);
	if (!sk) {
		FUNC13("failed to look up flow ID in table and "
			      "get corresponding socket\n");
		goto no_dccp_socket;
	}

	/*
	 * Step 2:
	 *	... or S.state == TIMEWAIT,
	 *		Generate Reset(No Connection) unless P.type == Reset
	 *		Drop packet and return
	 */
	if (sk->sk_state == DCCP_TIME_WAIT) {
		FUNC13("sk->sk_state == DCCP_TIME_WAIT: do_time_wait\n");
		FUNC21(FUNC20(sk));
		goto no_dccp_socket;
	}

	if (sk->sk_state == DCCP_NEW_SYN_RECV) {
		struct request_sock *req = FUNC19(sk);
		struct sock *nsk;

		sk = req->rsk_listener;
		if (FUNC29(sk->sk_state != DCCP_LISTEN)) {
			FUNC18(sk, req);
			goto lookup;
		}
		FUNC27(sk);
		refcounted = true;
		nsk = FUNC5(sk, skb, req);
		if (!nsk) {
			FUNC26(req);
			goto discard_and_relse;
		}
		if (nsk == sk) {
			FUNC26(req);
		} else if (FUNC6(sk, nsk, skb)) {
			FUNC17(sk, skb);
			goto discard_and_relse;
		} else {
			FUNC28(sk);
			return 0;
		}
	}
	/*
	 * RFC 4340, sec. 9.2.1: Minimum Checksum Coverage
	 *	o if MinCsCov = 0, only packets with CsCov = 0 are accepted
	 *	o if MinCsCov > 0, also accept packets with CsCov >= MinCsCov
	 */
	min_cov = FUNC15(sk)->dccps_pcrlen;
	if (dh->dccph_cscov && (min_cov == 0 || dh->dccph_cscov < min_cov))  {
		FUNC13("Packet CsCov %d does not satisfy MinCsCov %d\n",
			      dh->dccph_cscov, min_cov);
		/* FIXME: "Such packets SHOULD be reported using Data Dropped
		 *         options (Section 11.7) with Drop Code 0, Protocol
		 *         Constraints."                                     */
		goto discard_and_relse;
	}

	if (!FUNC30(sk, XFRM_POLICY_IN, skb))
		goto discard_and_relse;
	FUNC24(skb);

	return FUNC4(sk, skb, 1, dh->dccph_doff * 4, refcounted);

no_dccp_socket:
	if (!FUNC30(NULL, XFRM_POLICY_IN, skb))
		goto discard_it;
	/*
	 * Step 2:
	 *	If no socket ...
	 *		Generate Reset(No Connection) unless P.type == Reset
	 *		Drop packet and return
	 */
	if (dh->dccph_type != DCCP_PKT_RESET) {
		FUNC0(skb)->dccpd_reset_code =
					DCCP_RESET_CODE_NO_CONNECTION;
		FUNC17(sk, skb);
	}

discard_it:
	FUNC23(skb);
	return 0;

discard_and_relse:
	if (refcounted)
		FUNC28(sk);
	goto discard_it;
}