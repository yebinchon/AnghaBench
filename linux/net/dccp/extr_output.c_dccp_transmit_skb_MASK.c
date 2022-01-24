#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct TYPE_6__ {int /*<<< orphan*/  fl; } ;
struct inet_sock {TYPE_2__ cork; int /*<<< orphan*/  inet_dport; int /*<<< orphan*/  inet_sport; } ;
struct inet_connection_sock {TYPE_1__* icsk_af_ops; int /*<<< orphan*/  icsk_retransmits; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_iss; int /*<<< orphan*/  dccps_awl; int /*<<< orphan*/  dccps_service; int /*<<< orphan*/  dccps_gss; int /*<<< orphan*/  dccps_pcslen; int /*<<< orphan*/  dccps_gsr; } ;
struct dccp_skb_cb {int dccpd_type; int const dccpd_opt_len; int /*<<< orphan*/  dccpd_reset_code; int /*<<< orphan*/  dccpd_seq; int /*<<< orphan*/  dccpd_ccval; int /*<<< orphan*/  dccpd_ack_seq; } ;
struct dccp_hdr_ext {int dummy; } ;
struct dccp_hdr {int dccph_type; int dccph_doff; int dccph_x; int /*<<< orphan*/  dccph_cscov; int /*<<< orphan*/  dccph_ccval; int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;
struct TYPE_8__ {int /*<<< orphan*/  dccph_req_service; } ;
struct TYPE_7__ {int /*<<< orphan*/  dccph_reset_code; } ;
struct TYPE_5__ {int (* queue_xmit ) (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* send_check ) (struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_OUTSEGS ; 
#define  DCCP_PKT_DATA 133 
#define  DCCP_PKT_DATAACK 132 
#define  DCCP_PKT_REQUEST 131 
#define  DCCP_PKT_RESET 130 
#define  DCCP_PKT_SYNC 129 
#define  DCCP_PKT_SYNCACK 128 
 struct dccp_skb_cb* FUNC2 (struct sk_buff*) ; 
 int ENOBUFS ; 
 int EPROTO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 TYPE_4__* FUNC6 (struct sk_buff*) ; 
 TYPE_3__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dccp_hdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sock*,struct sk_buff*) ; 
 int FUNC11 (int) ; 
 struct dccp_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 struct dccp_hdr* FUNC14 (struct sk_buff*,int const) ; 
 struct inet_connection_sock* FUNC15 (struct sock*) ; 
 struct inet_sock* FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,struct sk_buff*) ; 
 int FUNC22 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct sock *sk, struct sk_buff *skb)
{
	if (FUNC18(skb != NULL)) {
		struct inet_sock *inet = FUNC16(sk);
		const struct inet_connection_sock *icsk = FUNC15(sk);
		struct dccp_sock *dp = FUNC12(sk);
		struct dccp_skb_cb *dcb = FUNC2(skb);
		struct dccp_hdr *dh;
		/* XXX For now we're using only 48 bits sequence numbers */
		const u32 dccp_header_size = sizeof(*dh) +
					     sizeof(struct dccp_hdr_ext) +
					  FUNC11(dcb->dccpd_type);
		int err, set_ack = 1;
		u64 ackno = dp->dccps_gsr;
		/*
		 * Increment GSS here already in case the option code needs it.
		 * Update GSS for real only if option processing below succeeds.
		 */
		dcb->dccpd_seq = FUNC0(dp->dccps_gss, 1);

		switch (dcb->dccpd_type) {
		case DCCP_PKT_DATA:
			set_ack = 0;
			/* fall through */
		case DCCP_PKT_DATAACK:
		case DCCP_PKT_RESET:
			break;

		case DCCP_PKT_REQUEST:
			set_ack = 0;
			/* Use ISS on the first (non-retransmitted) Request. */
			if (icsk->icsk_retransmits == 0)
				dcb->dccpd_seq = dp->dccps_iss;
			/* fall through */

		case DCCP_PKT_SYNC:
		case DCCP_PKT_SYNCACK:
			ackno = dcb->dccpd_ack_seq;
			/* fall through */
		default:
			/*
			 * Set owner/destructor: some skbs are allocated via
			 * alloc_skb (e.g. when retransmission may happen).
			 * Only Data, DataAck, and Reset packets should come
			 * through here with skb->sk set.
			 */
			FUNC3(skb->sk);
			FUNC20(skb, sk);
			break;
		}

		if (FUNC10(sk, skb)) {
			FUNC17(skb);
			return -EPROTO;
		}


		/* Build DCCP header and checksum it. */
		dh = FUNC14(skb, dccp_header_size);
		dh->dccph_type	= dcb->dccpd_type;
		dh->dccph_sport	= inet->inet_sport;
		dh->dccph_dport	= inet->inet_dport;
		dh->dccph_doff	= (dccp_header_size + dcb->dccpd_opt_len) / 4;
		dh->dccph_ccval	= dcb->dccpd_ccval;
		dh->dccph_cscov = dp->dccps_pcslen;
		/* XXX For now we're using only 48 bits sequence numbers */
		dh->dccph_x	= 1;

		FUNC13(sk, dcb->dccpd_seq);
		FUNC9(dh, dp->dccps_gss);
		if (set_ack)
			FUNC8(FUNC5(skb), ackno);

		switch (dcb->dccpd_type) {
		case DCCP_PKT_REQUEST:
			FUNC6(skb)->dccph_req_service =
							dp->dccps_service;
			/*
			 * Limit Ack window to ISS <= P.ackno <= GSS, so that
			 * only Responses to Requests we sent are considered.
			 */
			dp->dccps_awl = dp->dccps_iss;
			break;
		case DCCP_PKT_RESET:
			FUNC7(skb)->dccph_reset_code =
							dcb->dccpd_reset_code;
			break;
		}

		icsk->icsk_af_ops->send_check(sk, skb);

		if (set_ack)
			FUNC4(sk);

		FUNC1(DCCP_MIB_OUTSEGS);

		err = icsk->icsk_af_ops->queue_xmit(sk, skb, &inet->cork.fl);
		return FUNC19(err);
	}
	return -ENOBUFS;
}