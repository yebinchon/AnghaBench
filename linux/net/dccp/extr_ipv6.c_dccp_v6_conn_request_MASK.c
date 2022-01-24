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
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  users; } ;
struct request_sock {int dummy; } ;
struct TYPE_5__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
struct ipv6_pinfo {TYPE_2__ rxopt; } ;
struct inet_request_sock {int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ir_v6_rmt_addr; struct sk_buff* pktopts; int /*<<< orphan*/  ir_mark; int /*<<< orphan*/  ireq_family; int /*<<< orphan*/  ir_v6_loc_addr; } ;
struct dccp_skb_cb {int /*<<< orphan*/  dccpd_seq; int /*<<< orphan*/  dccpd_reset_code; } ;
struct dccp_request_sock {int /*<<< orphan*/  dreq_service; int /*<<< orphan*/  dreq_iss; int /*<<< orphan*/  dreq_gss; int /*<<< orphan*/  dreq_isr; int /*<<< orphan*/  dreq_gsr; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {int /*<<< orphan*/  dccph_req_service; } ;
struct TYPE_7__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  DCCP_MIB_ATTEMPTFAILS ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_BAD_SERVICE_CODE ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_TOO_BUSY ; 
 struct dccp_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DCCP_TIMEOUT_INIT ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dccp6_request_sock_ops ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/  const) ; 
 TYPE_4__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sock*,struct dccp_request_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct request_sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct dccp_request_sock* FUNC7 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*,struct request_sock*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,struct request_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sock*) ; 
 struct request_sock* FUNC17 (int /*<<< orphan*/ *,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,struct sk_buff*) ; 
 struct inet_request_sock* FUNC19 (struct request_sock*) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct request_sock*) ; 
 scalar_t__ FUNC27 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC28 (struct sock*) ; 

__attribute__((used)) static int FUNC29(struct sock *sk, struct sk_buff *skb)
{
	struct request_sock *req;
	struct dccp_request_sock *dreq;
	struct inet_request_sock *ireq;
	struct ipv6_pinfo *np = FUNC14(sk);
	const __be32 service = FUNC4(skb)->dccph_req_service;
	struct dccp_skb_cb *dcb = FUNC0(skb);

	if (skb->protocol == FUNC12(ETH_P_IP))
		return FUNC9(sk, skb);

	if (!FUNC23(skb))
		return 0;	/* discard, don't send a reset here */

	if (FUNC3(sk, service)) {
		dcb->dccpd_reset_code = DCCP_RESET_CODE_BAD_SERVICE_CODE;
		goto drop;
	}
	/*
	 * There are no SYN attacks on IPv6, yet...
	 */
	dcb->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
	if (FUNC16(sk))
		goto drop;

	if (FUNC28(sk))
		goto drop;

	req = FUNC17(&dccp6_request_sock_ops, sk, true);
	if (req == NULL)
		goto drop;

	if (FUNC6(req, FUNC8(sk), skb))
		goto drop_and_free;

	dreq = FUNC7(req);
	if (FUNC5(sk, dreq, skb))
		goto drop_and_free;

	if (FUNC27(sk, skb, req))
		goto drop_and_free;

	ireq = FUNC19(req);
	ireq->ir_v6_rmt_addr = FUNC21(skb)->saddr;
	ireq->ir_v6_loc_addr = FUNC21(skb)->daddr;
	ireq->ireq_family = AF_INET6;
	ireq->ir_mark = FUNC18(sk, skb);

	if (FUNC22(sk, skb, FUNC1(skb)) ||
	    np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo ||
	    np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim) {
		FUNC24(&skb->users);
		ireq->pktopts = skb;
	}
	ireq->ir_iif = sk->sk_bound_dev_if;

	/* So that link locals have meaning */
	if (!sk->sk_bound_dev_if &&
	    FUNC20(&ireq->ir_v6_rmt_addr) & IPV6_ADDR_LINKLOCAL)
		ireq->ir_iif = FUNC13(skb);

	/*
	 * Step 3: Process LISTEN state
	 *
	 *   Set S.ISR, S.GSR, S.SWL, S.SWH from packet or Init Cookie
	 *
	 * Setting S.SWL/S.SWH to is deferred to dccp_create_openreq_child().
	 */
	dreq->dreq_isr	   = dcb->dccpd_seq;
	dreq->dreq_gsr     = dreq->dreq_isr;
	dreq->dreq_iss	   = FUNC10(skb);
	dreq->dreq_gss     = dreq->dreq_iss;
	dreq->dreq_service = service;

	if (FUNC11(sk, req))
		goto drop_and_free;

	FUNC15(sk, req, DCCP_TIMEOUT_INIT);
	FUNC26(req);
	return 0;

drop_and_free:
	FUNC25(req);
drop:
	FUNC2(DCCP_MIB_ATTEMPTFAILS);
	return -1;
}