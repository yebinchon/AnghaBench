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
struct sock {scalar_t__ sk_state; } ;
struct smc_sock {int /*<<< orphan*/  conn; struct sock sk; } ;

/* Variables and functions */
 scalar_t__ SMC_CLOSED ; 
 scalar_t__ SMC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct smc_sock *new_smc)
{
	struct sock *newsmcsk = &new_smc->sk;

	if (newsmcsk->sk_state == SMC_INIT)
		FUNC2(&new_smc->sk); /* passive closing */
	newsmcsk->sk_state = SMC_CLOSED;
	FUNC0(&new_smc->conn);

	FUNC1(new_smc);
}