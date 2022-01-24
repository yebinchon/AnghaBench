#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {struct sock* rsk_listener; } ;
struct dccp_hdr {scalar_t__ dccph_type; int dccph_cscov; int dccph_doff; int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;
struct TYPE_6__ {scalar_t__ dccpd_type; int /*<<< orphan*/  dccpd_reset_code; int /*<<< orphan*/  dccpd_ack_seq; int /*<<< orphan*/  dccpd_seq; } ;
struct TYPE_5__ {int dccps_pcrlen; } ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 scalar_t__ DCCP_LISTEN ; 
 scalar_t__ DCCP_NEW_SYN_RECV ; 
 scalar_t__ DCCP_PKT_RESET ; 
 int /*<<< orphan*/  DCCP_PKT_WITHOUT_ACK_SEQ ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_NO_CONNECTION ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ DCCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC2 (struct dccp_hdr const*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct sock*,struct sk_buff*,int,int,int) ; 
 struct sock* FUNC5 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC6 (struct sock*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  dccp_hashinfo ; 
 struct dccp_hdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct dccp_hdr const*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 TYPE_2__* FUNC13 (struct sock*) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,struct request_sock*) ; 
 struct request_sock* FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC28(struct sk_buff *skb)
{
	const struct dccp_hdr *dh;
	bool refcounted;
	struct sock *sk;
	int min_cov;

	/* Step 1: Check header basics */

	if (FUNC10(skb))
		goto discard_it;

	/* Step 1: If header checksum is incorrect, drop packet and return. */
	if (FUNC14(skb, &FUNC21(skb)->saddr,
				     &FUNC21(skb)->daddr)) {
		FUNC1("dropped packet with invalid checksum\n");
		goto discard_it;
	}

	dh = FUNC7(skb);

	FUNC0(skb)->dccpd_seq  = FUNC9(dh);
	FUNC0(skb)->dccpd_type = dh->dccph_type;

	if (FUNC11(skb))
		FUNC0(skb)->dccpd_ack_seq = DCCP_PKT_WITHOUT_ACK_SEQ;
	else
		FUNC0(skb)->dccpd_ack_seq = FUNC8(skb);

lookup:
	sk = FUNC3(&dccp_hashinfo, skb, FUNC2(dh),
			        dh->dccph_sport, dh->dccph_dport,
				FUNC16(skb), 0, &refcounted);
	if (!sk) {
		FUNC12("failed to look up flow ID in table and "
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
		FUNC12("sk->sk_state == DCCP_TIME_WAIT: do_time_wait\n");
		FUNC20(FUNC19(sk));
		goto no_dccp_socket;
	}

	if (sk->sk_state == DCCP_NEW_SYN_RECV) {
		struct request_sock *req = FUNC18(sk);
		struct sock *nsk;

		sk = req->rsk_listener;
		if (FUNC26(sk->sk_state != DCCP_LISTEN)) {
			FUNC17(sk, req);
			goto lookup;
		}
		FUNC24(sk);
		refcounted = true;
		nsk = FUNC5(sk, skb, req);
		if (!nsk) {
			FUNC23(req);
			goto discard_and_relse;
		}
		if (nsk == sk) {
			FUNC23(req);
		} else if (FUNC6(sk, nsk, skb)) {
			FUNC15(sk, skb);
			goto discard_and_relse;
		} else {
			FUNC25(sk);
			return 0;
		}
	}
	/*
	 * RFC 4340, sec. 9.2.1: Minimum Checksum Coverage
	 *	o if MinCsCov = 0, only packets with CsCov = 0 are accepted
	 *	o if MinCsCov > 0, also accept packets with CsCov >= MinCsCov
	 */
	min_cov = FUNC13(sk)->dccps_pcrlen;
	if (dh->dccph_cscov  &&  (min_cov == 0 || dh->dccph_cscov < min_cov))  {
		FUNC12("Packet CsCov %d does not satisfy MinCsCov %d\n",
			      dh->dccph_cscov, min_cov);
		/* FIXME: send Data Dropped option (see also dccp_v4_rcv) */
		goto discard_and_relse;
	}

	if (!FUNC27(sk, XFRM_POLICY_IN, skb))
		goto discard_and_relse;

	return FUNC4(sk, skb, 1, dh->dccph_doff * 4,
				refcounted) ? -1 : 0;

no_dccp_socket:
	if (!FUNC27(NULL, XFRM_POLICY_IN, skb))
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
		FUNC15(sk, skb);
	}

discard_it:
	FUNC22(skb);
	return 0;

discard_and_relse:
	if (refcounted)
		FUNC25(sk);
	goto discard_it;
}