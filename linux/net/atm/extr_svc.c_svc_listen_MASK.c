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
struct sock {int sk_max_ack_backlog; int sk_err; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  local; } ;

/* Variables and functions */
 int ATM_BACKLOG_DEFAULT ; 
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_LISTEN ; 
 int /*<<< orphan*/  ATM_VF_SESSION ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EADDRINUSE ; 
 int EINVAL ; 
 int EUNATCH ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  as_listen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigd ; 
 int /*<<< orphan*/  FUNC9 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC13(struct socket *sock, int backlog)
{
	FUNC1(wait);
	struct sock *sk = sock->sk;
	struct atm_vcc *vcc = FUNC0(sock);
	int error;

	FUNC4("%p\n", vcc);
	FUNC3(sk);
	/* let server handle listen on unbound sockets */
	if (FUNC11(ATM_VF_SESSION, &vcc->flags)) {
		error = -EINVAL;
		goto out;
	}
	if (FUNC11(ATM_VF_LISTEN, &vcc->flags)) {
		error = -EADDRINUSE;
		goto out;
	}
	FUNC8(ATM_VF_WAITING, &vcc->flags);
	FUNC9(vcc, as_listen, NULL, NULL, &vcc->local);
	for (;;) {
		FUNC5(FUNC10(sk), &wait, TASK_UNINTERRUPTIBLE);
		if (!FUNC11(ATM_VF_WAITING, &vcc->flags) || !sigd)
			break;
		FUNC7();
	}
	FUNC2(FUNC10(sk), &wait);
	if (!sigd) {
		error = -EUNATCH;
		goto out;
	}
	FUNC8(ATM_VF_LISTEN, &vcc->flags);
	FUNC12(sk);
	sk->sk_max_ack_backlog = backlog > 0 ? backlog : ATM_BACKLOG_DEFAULT;
	error = -sk->sk_err;
out:
	FUNC6(sk);
	return error;
}