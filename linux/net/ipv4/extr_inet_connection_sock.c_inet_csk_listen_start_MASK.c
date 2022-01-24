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
struct sock {TYPE_1__* sk_prot; scalar_t__ sk_ack_backlog; } ;
struct inet_sock {int /*<<< orphan*/  inet_num; int /*<<< orphan*/  inet_sport; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_accept_queue; } ;
struct TYPE_2__ {int (* hash ) (struct sock*) ;int /*<<< orphan*/  (* get_port ) (struct sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EADDRINUSE ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sock*) ; 

int FUNC11(struct sock *sk, int backlog)
{
	struct inet_connection_sock *icsk = FUNC1(sk);
	struct inet_sock *inet = FUNC3(sk);
	int err = -EADDRINUSE;

	FUNC7(&icsk->icsk_accept_queue);

	sk->sk_ack_backlog = 0;
	FUNC2(sk);

	/* There is race window here: we announce ourselves listening,
	 * but this transition is still not validated by get_port().
	 * It is OK, because this socket enters to hash table only
	 * after validation is complete.
	 */
	FUNC5(sk, TCP_LISTEN);
	if (!sk->sk_prot->get_port(sk, inet->inet_num)) {
		inet->inet_sport = FUNC0(inet->inet_num);

		FUNC8(sk);
		err = sk->sk_prot->hash(sk);

		if (FUNC6(!err))
			return 0;
	}

	FUNC4(sk, TCP_CLOSE);
	return err;
}