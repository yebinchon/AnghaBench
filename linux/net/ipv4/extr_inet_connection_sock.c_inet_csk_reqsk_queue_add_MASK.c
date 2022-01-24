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
struct sock {scalar_t__ sk_state; } ;
struct request_sock_queue {int /*<<< orphan*/  rskq_lock; struct request_sock* rskq_accept_tail; int /*<<< orphan*/ * rskq_accept_head; } ;
struct request_sock {struct request_sock* dl_next; struct sock* sk; } ;
struct TYPE_2__ {struct request_sock_queue icsk_accept_queue; } ;

/* Variables and functions */
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct request_sock*,struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

struct sock *FUNC7(struct sock *sk,
				      struct request_sock *req,
				      struct sock *child)
{
	struct request_sock_queue *queue = &FUNC2(sk)->icsk_accept_queue;

	FUNC4(&queue->rskq_lock);
	if (FUNC6(sk->sk_state != TCP_LISTEN)) {
		FUNC1(sk, req, child);
		child = NULL;
	} else {
		req->sk = child;
		req->dl_next = NULL;
		if (queue->rskq_accept_head == NULL)
			FUNC0(queue->rskq_accept_head, req);
		else
			queue->rskq_accept_tail->dl_next = req;
		queue->rskq_accept_tail = req;
		FUNC3(sk);
	}
	FUNC5(&queue->rskq_lock);
	return child;
}