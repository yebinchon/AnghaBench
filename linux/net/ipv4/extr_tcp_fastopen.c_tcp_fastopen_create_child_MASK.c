#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {scalar_t__ rcv_nxt; scalar_t__ rcv_wup; int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/  max_window; int /*<<< orphan*/  fastopen_rsk; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  qlen; } ;
struct request_sock_queue {TYPE_2__ fastopenq; } ;
struct request_sock {int /*<<< orphan*/  rsk_refcnt; } ;
struct TYPE_12__ {scalar_t__ seq; } ;
struct TYPE_11__ {TYPE_1__* icsk_af_ops; struct request_sock_queue icsk_accept_queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  window; } ;
struct TYPE_9__ {int tfo_listener; scalar_t__ rcv_nxt; } ;
struct TYPE_7__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB ; 
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  TCP_TIMEOUT_INIT ; 
 TYPE_5__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC8 (struct sock*,struct sk_buff*,struct request_sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*) ; 
 TYPE_4__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (struct request_sock*) ; 
 struct tcp_sock* FUNC13 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC14(struct sock *sk,
					      struct sk_buff *skb,
					      struct request_sock *req)
{
	struct tcp_sock *tp;
	struct request_sock_queue *queue = &FUNC1(sk)->icsk_accept_queue;
	struct sock *child;
	bool own_req;

	child = FUNC1(sk)->icsk_af_ops->syn_recv_sock(sk, skb, req, NULL,
							 NULL, &own_req);
	if (!child)
		return NULL;

	FUNC6(&queue->fastopenq.lock);
	queue->fastopenq.qlen++;
	FUNC7(&queue->fastopenq.lock);

	/* Initialize the child socket. Have to fix some values to take
	 * into account the child is a Fast Open socket and is created
	 * only out of the bits carried in the SYN packet.
	 */
	tp = FUNC13(child);

	FUNC4(tp->fastopen_rsk, req);
	FUNC12(req)->tfo_listener = true;

	/* RFC1323: The window in SYN & SYN/ACK segments is never
	 * scaled. So correct it appropriately.
	 */
	tp->snd_wnd = FUNC3(FUNC10(skb)->window);
	tp->max_window = tp->snd_wnd;

	/* Activate the retrans timer so that SYNACK can be retransmitted.
	 * The request socket is not added to the ehash
	 * because it's been added to the accept queue directly.
	 */
	FUNC2(child, ICSK_TIME_RETRANS,
				  TCP_TIMEOUT_INIT, TCP_RTO_MAX);

	FUNC5(&req->rsk_refcnt, 2);

	/* Now finish processing the fastopen child socket. */
	FUNC11(child, BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB);

	tp->rcv_nxt = FUNC0(skb)->seq + 1;

	FUNC9(child, skb);

	FUNC12(req)->rcv_nxt = tp->rcv_nxt;
	tp->rcv_wup = tp->rcv_nxt;
	/* tcp_conn_request() is sending the SYNACK,
	 * and queues the child into listener accept queue.
	 */
	return child;
}