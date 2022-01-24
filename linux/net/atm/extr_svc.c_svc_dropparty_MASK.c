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
struct sock {int /*<<< orphan*/  sk_err_soft; } ;
struct atm_vcc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EUNATCH ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  as_dropparty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigd ; 
 int /*<<< orphan*/  FUNC8 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct socket *sock, int ep_ref)
{
	FUNC1(wait);
	struct sock *sk = sock->sk;
	struct atm_vcc *vcc = FUNC0(sock);
	int error;

	FUNC3(sk);
	FUNC7(ATM_VF_WAITING, &vcc->flags);
	FUNC8(vcc, as_dropparty, NULL, NULL, NULL, NULL, ep_ref);
	for (;;) {
		FUNC4(FUNC9(sk), &wait, TASK_INTERRUPTIBLE);
		if (!FUNC10(ATM_VF_WAITING, &vcc->flags) || !sigd)
			break;
		FUNC6();
	}
	FUNC2(FUNC9(sk), &wait);
	if (!sigd) {
		error = -EUNATCH;
		goto out;
	}
	error = -FUNC11(&sk->sk_err_soft, 0);
out:
	FUNC5(sk);
	return error;
}