#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vsock_sock {int close_work_scheduled; int /*<<< orphan*/  close_work; int /*<<< orphan*/  peer_shutdown; } ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  TCP_CLOSING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC1 (struct vsock_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct vsock_sock*) ; 
 scalar_t__ FUNC6 (struct vsock_sock*) ; 

__attribute__((used)) static void FUNC7(struct vsock_sock *vsk,
				   bool cancel_timeout)
{
	struct sock *sk = FUNC1(vsk);

	FUNC3(sk, SOCK_DONE);
	vsk->peer_shutdown = SHUTDOWN_MASK;
	if (FUNC6(vsk) <= 0)
		sk->sk_state = TCP_CLOSING;
	sk->sk_state_change(sk);
	if (vsk->close_work_scheduled &&
	    (!cancel_timeout || FUNC0(&vsk->close_work))) {
		vsk->close_work_scheduled = false;
		FUNC5(vsk);

		/* Release the reference taken while scheduling the timeout */
		FUNC2(sk);
	}
}