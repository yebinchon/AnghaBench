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
struct sock {scalar_t__ sk_state; TYPE_1__* sk_prot; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; } ;
struct smc_sock {int /*<<< orphan*/  conn; int /*<<< orphan*/  use_fallback; scalar_t__ clcsock; struct sock sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unhash ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 scalar_t__ SMC_CLOSED ; 
 scalar_t__ SMC_INIT ; 
 scalar_t__ SMC_LISTEN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_sock*) ; 
 int FUNC4 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct smc_sock *smc)
{
	struct sock *sk = &smc->sk;
	int rc = 0;

	if (!smc->use_fallback) {
		rc = FUNC4(smc);
		FUNC8(sk, SOCK_DEAD);
		sk->sk_shutdown |= SHUTDOWN_MASK;
	} else {
		if (sk->sk_state != SMC_LISTEN && sk->sk_state != SMC_INIT)
			FUNC7(sk); /* passive closing */
		if (sk->sk_state == SMC_LISTEN) {
			/* wake up clcsock accept */
			rc = FUNC0(smc->clcsock, SHUT_RDWR);
		}
		sk->sk_state = SMC_CLOSED;
		sk->sk_state_change(sk);
		FUNC6(smc);
	}

	sk->sk_prot->unhash(sk);

	if (sk->sk_state == SMC_CLOSED) {
		if (smc->clcsock) {
			FUNC2(sk);
			FUNC3(smc);
			FUNC1(sk);
		}
		if (!smc->use_fallback)
			FUNC5(&smc->conn);
	}

	return rc;
}