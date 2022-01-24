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
struct socket_wq {int /*<<< orphan*/  wait; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_wq; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {int /*<<< orphan*/  wait; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_OUT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 struct socket_wq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket_wq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct sctp_association *asoc)
{
	struct sock *sk = asoc->base.sk;

	if (FUNC4(asoc) <= 0)
		return;

	if (FUNC6(&asoc->wait))
		FUNC7(&asoc->wait);

	if (FUNC3(sk)) {
		struct socket_wq *wq;

		FUNC1();
		wq = FUNC0(sk->sk_wq);
		if (wq) {
			if (FUNC6(&wq->wait))
				FUNC7(&wq->wait);

			/* Note that we try to include the Async I/O support
			 * here by modeling from the current TCP/UDP code.
			 * We have not tested with it yet.
			 */
			if (!(sk->sk_shutdown & SEND_SHUTDOWN))
				FUNC5(wq, SOCK_WAKE_SPACE, POLL_OUT);
		}
		FUNC2();
	}
}