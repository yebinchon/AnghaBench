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
struct sock {int dummy; } ;
struct smc_sock {int /*<<< orphan*/  sk; int /*<<< orphan*/  accept_q_lock; } ;
struct TYPE_2__ {struct smc_sock* listen_smc; int /*<<< orphan*/  accept_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct smc_sock *par = FUNC2(sk)->listen_smc;

	FUNC4(&par->accept_q_lock);
	FUNC0(&FUNC2(sk)->accept_q);
	FUNC5(&par->accept_q_lock);
	FUNC1(&FUNC2(sk)->listen_smc->sk);
	FUNC3(sk); /* sock_hold in smc_accept_enqueue */
}