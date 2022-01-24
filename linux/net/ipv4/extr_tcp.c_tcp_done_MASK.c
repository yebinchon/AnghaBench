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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fastopen_rsk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MIB_ATTEMPTFAILS ; 
 scalar_t__ TCP_SYN_RECV ; 
 scalar_t__ TCP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct request_sock* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct request_sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct sock*) ; 

void FUNC10(struct sock *sk)
{
	struct request_sock *req;

	/* We might be called with a new socket, after
	 * inet_csk_prepare_forced_close() has been called
	 * so we can not use lockdep_sock_is_held(sk)
	 */
	req = FUNC2(FUNC9(sk)->fastopen_rsk, 1);

	if (sk->sk_state == TCP_SYN_SENT || sk->sk_state == TCP_SYN_RECV)
		FUNC0(FUNC5(sk), TCP_MIB_ATTEMPTFAILS);

	FUNC8(sk, TCP_CLOSE);
	FUNC7(sk);
	if (req)
		FUNC3(sk, req, false);

	sk->sk_shutdown = SHUTDOWN_MASK;

	if (!FUNC4(sk, SOCK_DEAD))
		sk->sk_state_change(sk);
	else
		FUNC1(sk);
}