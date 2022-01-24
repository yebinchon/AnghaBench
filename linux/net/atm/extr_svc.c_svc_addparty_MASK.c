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
struct sockaddr_atmsvc {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_err_soft; } ;
struct atm_vcc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINPROGRESS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  as_addparty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigd ; 
 int /*<<< orphan*/  FUNC9 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr_atmsvc*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct socket *sock, struct sockaddr *sockaddr,
			int sockaddr_len, int flags)
{
	FUNC1(wait);
	struct sock *sk = sock->sk;
	struct atm_vcc *vcc = FUNC0(sock);
	int error;

	FUNC3(sk);
	FUNC8(ATM_VF_WAITING, &vcc->flags);
	FUNC9(vcc, as_addparty, NULL, NULL,
		 (struct sockaddr_atmsvc *) sockaddr);
	if (flags & O_NONBLOCK) {
		error = -EINPROGRESS;
		goto out;
	}
	FUNC4("added wait queue\n");
	for (;;) {
		FUNC5(FUNC10(sk), &wait, TASK_INTERRUPTIBLE);
		if (!FUNC11(ATM_VF_WAITING, &vcc->flags) || !sigd)
			break;
		FUNC7();
	}
	FUNC2(FUNC10(sk), &wait);
	error = -FUNC12(&sk->sk_err_soft, 0);
out:
	FUNC6(sk);
	return error;
}