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
struct sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  expires; } ;
struct request_sock {struct request_sock* dl_next; TYPE_1__ rsk_timer; } ;
struct fastopen_queue {scalar_t__ max_qlen; scalar_t__ qlen; int /*<<< orphan*/  lock; struct request_sock* rskq_rst_head; } ;
struct TYPE_5__ {struct fastopen_queue fastopenq; } ;
struct TYPE_6__ {TYPE_2__ icsk_accept_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPFASTOPENLISTENOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct sock *sk)
{
	struct fastopen_queue *fastopenq;

	/* Make sure the listener has enabled fastopen, and we don't
	 * exceed the max # of pending TFO requests allowed before trying
	 * to validating the cookie in order to avoid burning CPU cycles
	 * unnecessarily.
	 *
	 * XXX (TFO) - The implication of checking the max_qlen before
	 * processing a cookie request is that clients can't differentiate
	 * between qlen overflow causing Fast Open to be disabled
	 * temporarily vs a server not supporting Fast Open at all.
	 */
	fastopenq = &FUNC1(sk)->icsk_accept_queue.fastopenq;
	if (fastopenq->max_qlen == 0)
		return false;

	if (fastopenq->qlen >= fastopenq->max_qlen) {
		struct request_sock *req1;
		FUNC4(&fastopenq->lock);
		req1 = fastopenq->rskq_rst_head;
		if (!req1 || FUNC6(req1->rsk_timer.expires, jiffies)) {
			FUNC0(FUNC3(sk),
					LINUX_MIB_TCPFASTOPENLISTENOVERFLOW);
			FUNC5(&fastopenq->lock);
			return false;
		}
		fastopenq->rskq_rst_head = req1->dl_next;
		fastopenq->qlen--;
		FUNC5(&fastopenq->lock);
		FUNC2(req1);
	}
	return true;
}