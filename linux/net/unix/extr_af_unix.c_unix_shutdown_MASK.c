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
struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_type; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  POLL_HUP ; 
 int /*<<< orphan*/  POLL_IN ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 int SHUT_RD ; 
 int SHUT_RDWR ; 
 scalar_t__ SOCK_SEQPACKET ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  SOCK_WAKE_WAITD ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, int mode)
{
	struct sock *sk = sock->sk;
	struct sock *other;

	if (mode < SHUT_RD || mode > SHUT_RDWR)
		return -EINVAL;
	/* This maps:
	 * SHUT_RD   (0) -> RCV_SHUTDOWN  (1)
	 * SHUT_WR   (1) -> SEND_SHUTDOWN (2)
	 * SHUT_RDWR (2) -> SHUTDOWN_MASK (3)
	 */
	++mode;

	FUNC6(sk);
	sk->sk_shutdown |= mode;
	other = FUNC5(sk);
	if (other)
		FUNC1(other);
	FUNC7(sk);
	sk->sk_state_change(sk);

	if (other &&
		(sk->sk_type == SOCK_STREAM || sk->sk_type == SOCK_SEQPACKET)) {

		int peer_mode = 0;

		if (mode&RCV_SHUTDOWN)
			peer_mode |= SEND_SHUTDOWN;
		if (mode&SEND_SHUTDOWN)
			peer_mode |= RCV_SHUTDOWN;
		FUNC6(other);
		other->sk_shutdown |= peer_mode;
		FUNC7(other);
		other->sk_state_change(other);
		if (peer_mode == SHUTDOWN_MASK)
			FUNC0(other, SOCK_WAKE_WAITD, POLL_HUP);
		else if (peer_mode & RCV_SHUTDOWN)
			FUNC0(other, SOCK_WAKE_WAITD, POLL_IN);
	}
	if (other)
		FUNC2(other);

	return 0;
}