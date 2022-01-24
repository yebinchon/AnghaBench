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
struct sock {int /*<<< orphan*/  sk_state; } ;
struct pppol2tp_session {int /*<<< orphan*/  rcu; int /*<<< orphan*/  sk_lock; int /*<<< orphan*/  sk; int /*<<< orphan*/  __sk; } ;
struct l2tp_session {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  PPPOX_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_session*) ; 
 struct pppol2tp_session* FUNC3 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pppol2tp_put_sk ; 
 struct l2tp_session* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 

__attribute__((used)) static int FUNC15(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct l2tp_session *session;
	int error;

	if (!sk)
		return 0;

	error = -EBADF;
	FUNC4(sk);
	if (FUNC12(sk, SOCK_DEAD) != 0)
		goto error;

	FUNC9(sk);

	/* Signal the death of the socket. */
	sk->sk_state = PPPOX_DEAD;
	FUNC13(sk);
	sock->sk = NULL;

	session = FUNC8(sk);
	if (session) {
		struct pppol2tp_session *ps;

		FUNC2(session);

		ps = FUNC3(session);
		FUNC6(&ps->sk_lock);
		ps->__sk = FUNC10(ps->sk,
						     FUNC5(&ps->sk_lock));
		FUNC0(ps->sk, NULL);
		FUNC7(&ps->sk_lock);
		FUNC1(&ps->rcu, pppol2tp_put_sk);

		/* Rely on the sock_put() call at the end of the function for
		 * dropping the reference held by pppol2tp_sock_to_session().
		 * The last reference will be dropped by pppol2tp_put_sk().
		 */
	}

	FUNC11(sk);

	/* This will delete the session context via
	 * pppol2tp_session_destruct() if the socket's refcnt drops to
	 * zero.
	 */
	FUNC14(sk);

	return 0;

error:
	FUNC11(sk);
	return error;
}