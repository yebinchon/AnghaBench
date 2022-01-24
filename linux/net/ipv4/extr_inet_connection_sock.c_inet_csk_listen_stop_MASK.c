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
struct sock {int /*<<< orphan*/  sk_ack_backlog; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct request_sock* rskq_rst_head; } ;
struct request_sock_queue {TYPE_1__ fastopenq; } ;
struct request_sock {struct request_sock* dl_next; struct sock* sk; } ;
struct inet_connection_sock {struct request_sock_queue icsk_accept_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct request_sock*,struct sock*) ; 
 struct inet_connection_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct request_sock*) ; 
 struct request_sock* FUNC10 (struct request_sock_queue*,struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC6(sk);
	struct request_sock_queue *queue = &icsk->icsk_accept_queue;
	struct request_sock *next, *req;

	/* Following specs, it would be better either to send FIN
	 * (and enter FIN-WAIT-1, it is normal close)
	 * or to send active reset (abort).
	 * Certainly, it is pretty dangerous while synflood, but it is
	 * bad justification for our negligence 8)
	 * To be honest, we are not able to make either
	 * of the variants now.			--ANK
	 */
	while ((req = FUNC10(queue, sk)) != NULL) {
		struct sock *child = req->sk;

		FUNC7();
		FUNC2(child);
		FUNC0(FUNC12(child));
		FUNC11(child);

		FUNC5(sk, req, child);
		FUNC9(req);
		FUNC3(child);
		FUNC8();
		FUNC13(child);

		FUNC4();
	}
	if (queue->fastopenq.rskq_rst_head) {
		/* Free all the reqs queued in rskq_rst_head. */
		FUNC14(&queue->fastopenq.lock);
		req = queue->fastopenq.rskq_rst_head;
		queue->fastopenq.rskq_rst_head = NULL;
		FUNC15(&queue->fastopenq.lock);
		while (req != NULL) {
			next = req->dl_next;
			FUNC9(req);
			req = next;
		}
	}
	FUNC1(sk->sk_ack_backlog);
}