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
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_request_sock {int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ireq_family; int /*<<< orphan*/  ir_mark; } ;
struct dccp_skb_cb {int /*<<< orphan*/  dccpd_seq; int /*<<< orphan*/  dccpd_reset_code; } ;
struct dccp_request_sock {int /*<<< orphan*/  dreq_service; int /*<<< orphan*/  dreq_iss; int /*<<< orphan*/  dreq_gss; int /*<<< orphan*/  dreq_isr; int /*<<< orphan*/  dreq_gsr; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  dccph_req_service; } ;
struct TYPE_5__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int rt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  DCCP_MIB_ATTEMPTFAILS ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_BAD_SERVICE_CODE ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_TOO_BUSY ; 
 struct dccp_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DCCP_TIMEOUT_INIT ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/  const) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sock*,struct dccp_request_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct request_sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  dccp_request_sock_ops ; 
 struct dccp_request_sock* FUNC6 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct request_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 struct request_sock* FUNC12 (int /*<<< orphan*/ *,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff*) ; 
 struct inet_request_sock* FUNC14 (struct request_sock*) ; 
 TYPE_2__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct request_sock*) ; 
 scalar_t__ FUNC19 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC23 (struct sk_buff*) ; 

int FUNC24(struct sock *sk, struct sk_buff *skb)
{
	struct inet_request_sock *ireq;
	struct request_sock *req;
	struct dccp_request_sock *dreq;
	const __be32 service = FUNC3(skb)->dccph_req_service;
	struct dccp_skb_cb *dcb = FUNC0(skb);

	/* Never answer to DCCP_PKT_REQUESTs send to broadcast or multicast */
	if (FUNC23(skb)->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST))
		return 0;	/* discard, don't send a reset here */

	if (FUNC2(sk, service)) {
		dcb->dccpd_reset_code = DCCP_RESET_CODE_BAD_SERVICE_CODE;
		goto drop;
	}
	/*
	 * TW buckets are converted to open requests without
	 * limitations, they conserve resources and peer is
	 * evidently real one.
	 */
	dcb->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
	if (FUNC11(sk))
		goto drop;

	if (FUNC20(sk))
		goto drop;

	req = FUNC12(&dccp_request_sock_ops, sk, true);
	if (req == NULL)
		goto drop;

	if (FUNC5(req, FUNC7(sk), skb))
		goto drop_and_free;

	dreq = FUNC6(req);
	if (FUNC4(sk, dreq, skb))
		goto drop_and_free;

	if (FUNC19(sk, skb, req))
		goto drop_and_free;

	ireq = FUNC14(req);
	FUNC22(FUNC16(req), FUNC15(skb)->daddr);
	FUNC21(FUNC16(req), FUNC15(skb)->saddr);
	ireq->ir_mark = FUNC13(sk, skb);
	ireq->ireq_family = AF_INET;
	ireq->ir_iif = sk->sk_bound_dev_if;

	/*
	 * Step 3: Process LISTEN state
	 *
	 * Set S.ISR, S.GSR, S.SWL, S.SWH from packet or Init Cookie
	 *
	 * Setting S.SWL/S.SWH to is deferred to dccp_create_openreq_child().
	 */
	dreq->dreq_isr	   = dcb->dccpd_seq;
	dreq->dreq_gsr	   = dreq->dreq_isr;
	dreq->dreq_iss	   = FUNC8(skb);
	dreq->dreq_gss     = dreq->dreq_iss;
	dreq->dreq_service = service;

	if (FUNC9(sk, req))
		goto drop_and_free;

	FUNC10(sk, req, DCCP_TIMEOUT_INIT);
	FUNC18(req);
	return 0;

drop_and_free:
	FUNC17(req);
drop:
	FUNC1(DCCP_MIB_ATTEMPTFAILS);
	return -1;
}