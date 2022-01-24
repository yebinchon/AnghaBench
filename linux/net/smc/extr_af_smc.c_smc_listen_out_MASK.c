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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;} ;
struct smc_sock {struct sock sk; struct smc_sock* listen_smc; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ SMC_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct smc_sock *new_smc)
{
	struct smc_sock *lsmc = new_smc->listen_smc;
	struct sock *newsmcsk = &new_smc->sk;

	if (lsmc->sk.sk_state == SMC_LISTEN) {
		FUNC0(&lsmc->sk, SINGLE_DEPTH_NESTING);
		FUNC2(&lsmc->sk, newsmcsk);
		FUNC1(&lsmc->sk);
	} else { /* no longer listening */
		FUNC3(newsmcsk);
	}

	/* Wake up accept */
	lsmc->sk.sk_data_ready(&lsmc->sk);
	FUNC4(&lsmc->sk); /* sock_hold in smc_tcp_listen_work */
}