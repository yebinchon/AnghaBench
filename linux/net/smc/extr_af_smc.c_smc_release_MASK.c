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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct smc_sock {int /*<<< orphan*/  connect_work; TYPE_1__* clcsock; scalar_t__ connect_nonblock; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ SMC_INIT ; 
 scalar_t__ SMC_LISTEN ; 
 int FUNC0 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct smc_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct smc_sock *smc;
	int rc = 0;

	if (!sk)
		goto out;

	smc = FUNC5(sk);

	/* cleanup for a dangling non-blocking connect */
	if (smc->connect_nonblock && sk->sk_state == SMC_INIT)
		FUNC8(smc->clcsock->sk, ECONNABORTED);
	FUNC1(&smc->connect_work);

	if (sk->sk_state == SMC_LISTEN)
		/* smc_close_non_accepted() is called and acquires
		 * sock lock for child sockets again
		 */
		FUNC3(sk, SINGLE_DEPTH_NESTING);
	else
		FUNC2(sk);

	rc = FUNC0(smc);

	/* detach socket */
	FUNC6(sk);
	sock->sk = NULL;
	FUNC4(sk);

	FUNC7(sk); /* final sock_put */
out:
	return rc;
}