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
typedef  int u8 ;
struct timer_list {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_max_ack_backlog; } ;
struct request_sock_queue {int /*<<< orphan*/  young; int /*<<< orphan*/  rskq_defer_accept; } ;
struct request_sock {int num_timeout; int /*<<< orphan*/  rsk_timer; TYPE_2__* rsk_ops; struct sock* rsk_listener; } ;
struct TYPE_4__ {int sysctl_tcp_synack_retries; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {scalar_t__ icsk_syn_retries; struct request_sock_queue icsk_accept_queue; } ;
struct TYPE_6__ {scalar_t__ acked; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* syn_ack_timeout ) (struct request_sock*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 int TCP_TIMEOUT_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct request_sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct request_sock*) ; 
 TYPE_3__* FUNC5 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct request_sock*) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 scalar_t__ jiffies ; 
 int FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct request_sock* req ; 
 int FUNC11 (struct request_sock_queue*) ; 
 int FUNC12 (struct request_sock_queue*) ; 
 int /*<<< orphan*/  rsk_timer ; 
 struct net* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct request_sock*,int,int,int,int*,int*) ; 

__attribute__((used)) static void FUNC16(struct timer_list *t)
{
	struct request_sock *req = FUNC2(req, t, rsk_timer);
	struct sock *sk_listener = req->rsk_listener;
	struct net *net = FUNC13(sk_listener);
	struct inet_connection_sock *icsk = FUNC3(sk_listener);
	struct request_sock_queue *queue = &icsk->icsk_accept_queue;
	int qlen, expire = 0, resend = 0;
	int max_retries, thresh;
	u8 defer_accept;

	if (FUNC7(sk_listener) != TCP_LISTEN)
		goto drop;

	max_retries = icsk->icsk_syn_retries ? : net->ipv4.sysctl_tcp_synack_retries;
	thresh = max_retries;
	/* Normally all the openreqs are young and become mature
	 * (i.e. converted to established socket) for first timeout.
	 * If synack was not acknowledged for 1 second, it means
	 * one of the following things: synack was lost, ack was lost,
	 * rtt is high or nobody planned to ack (i.e. synflood).
	 * When server is a bit loaded, queue is populated with old
	 * open requests, reducing effective size of queue.
	 * When server is well loaded, queue size reduces to zero
	 * after several minutes of work. It is not synflood,
	 * it is normal operation. The solution is pruning
	 * too old entries overriding normal timeout, when
	 * situation becomes dangerous.
	 *
	 * Essentially, we reserve half of room for young
	 * embrions; and abort old ones without pity, if old
	 * ones are about to clog our table.
	 */
	qlen = FUNC11(queue);
	if ((qlen << 1) > FUNC8(8U, sk_listener->sk_max_ack_backlog)) {
		int young = FUNC12(queue) << 1;

		while (thresh > 2) {
			if (qlen < young)
				break;
			thresh--;
			young <<= 1;
		}
	}
	defer_accept = FUNC0(queue->rskq_defer_accept);
	if (defer_accept)
		max_retries = defer_accept;
	FUNC15(req, thresh, max_retries, defer_accept,
		       &expire, &resend);
	req->rsk_ops->syn_ack_timeout(req);
	if (!expire &&
	    (!resend ||
	     !FUNC6(sk_listener, req) ||
	     FUNC5(req)->acked)) {
		unsigned long timeo;

		if (req->num_timeout++ == 0)
			FUNC1(&queue->young);
		timeo = FUNC9(TCP_TIMEOUT_INIT << req->num_timeout, TCP_RTO_MAX);
		FUNC10(&req->rsk_timer, jiffies + timeo);
		return;
	}
drop:
	FUNC4(sk_listener, req);
}