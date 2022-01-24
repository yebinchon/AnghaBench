#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {TYPE_2__* rsk_ops; } ;
struct dccp_request_sock {int /*<<< orphan*/  dreq_lock; scalar_t__ dreq_gss; scalar_t__ dreq_iss; int /*<<< orphan*/  dreq_gsr; } ;
struct TYPE_10__ {int /*<<< orphan*/  dccpd_reset_code; scalar_t__ dccpd_ack_seq; int /*<<< orphan*/  dccpd_seq; } ;
struct TYPE_9__ {scalar_t__ dccph_type; } ;
struct TYPE_8__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* send_reset ) (struct sock*,struct sk_buff*) ;} ;
struct TYPE_6__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,int /*<<< orphan*/ *,struct request_sock*,int*) ;} ;

/* Variables and functions */
 scalar_t__ DCCP_PKT_ACK ; 
 scalar_t__ DCCP_PKT_DATAACK ; 
 scalar_t__ DCCP_PKT_REQUEST ; 
 scalar_t__ DCCP_PKT_RESET ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_PACKET_ERROR ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_TOO_BUSY ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_4__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sock*,struct dccp_request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct dccp_request_sock* FUNC6 (struct request_sock*) ; 
 TYPE_3__* FUNC7 (struct sock*) ; 
 struct sock* FUNC8 (struct sock*,struct sock*,struct request_sock*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC13 (struct sock*,struct sk_buff*,struct request_sock*,int /*<<< orphan*/ *,struct request_sock*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sk_buff*) ; 

struct sock *FUNC15(struct sock *sk, struct sk_buff *skb,
			    struct request_sock *req)
{
	struct sock *child = NULL;
	struct dccp_request_sock *dreq = FUNC6(req);
	bool own_req;

	/* TCP/DCCP listeners became lockless.
	 * DCCP stores complex state in its request_sock, so we need
	 * a protection for them, now this code runs without being protected
	 * by the parent (listener) lock.
	 */
	FUNC11(&dreq->dreq_lock);

	/* Check for retransmitted REQUEST */
	if (FUNC3(skb)->dccph_type == DCCP_PKT_REQUEST) {

		if (FUNC1(FUNC0(skb)->dccpd_seq, dreq->dreq_gsr)) {
			FUNC5("Retransmitted REQUEST\n");
			dreq->dreq_gsr = FUNC0(skb)->dccpd_seq;
			/*
			 * Send another RESPONSE packet
			 * To protect against Request floods, increment retrans
			 * counter (backoff, monitored by dccp_response_timer).
			 */
			FUNC10(sk, req);
		}
		/* Network Duplicate, discard packet */
		goto out;
	}

	FUNC0(skb)->dccpd_reset_code = DCCP_RESET_CODE_PACKET_ERROR;

	if (FUNC3(skb)->dccph_type != DCCP_PKT_ACK &&
	    FUNC3(skb)->dccph_type != DCCP_PKT_DATAACK)
		goto drop;

	/* Invalid ACK */
	if (!FUNC2(FUNC0(skb)->dccpd_ack_seq,
				dreq->dreq_iss, dreq->dreq_gss)) {
		FUNC5("Invalid ACK number: ack_seq=%llu, "
			      "dreq_iss=%llu, dreq_gss=%llu\n",
			      (unsigned long long)
			      FUNC0(skb)->dccpd_ack_seq,
			      (unsigned long long) dreq->dreq_iss,
			      (unsigned long long) dreq->dreq_gss);
		goto drop;
	}

	if (FUNC4(sk, dreq, skb))
		 goto drop;

	child = FUNC7(sk)->icsk_af_ops->syn_recv_sock(sk, skb, req, NULL,
							 req, &own_req);
	if (child) {
		child = FUNC8(sk, child, req, own_req);
		goto out;
	}

	FUNC0(skb)->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
drop:
	if (FUNC3(skb)->dccph_type != DCCP_PKT_RESET)
		req->rsk_ops->send_reset(sk, skb);

	FUNC9(sk, req);
out:
	FUNC12(&dreq->dreq_lock);
	return child;
}