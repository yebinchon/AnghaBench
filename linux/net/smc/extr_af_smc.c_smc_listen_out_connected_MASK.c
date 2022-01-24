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
struct smc_sock {struct sock sk; } ;

/* Variables and functions */
 scalar_t__ SMC_ACTIVE ; 
 scalar_t__ SMC_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_sock*) ; 

__attribute__((used)) static void FUNC2(struct smc_sock *new_smc)
{
	struct sock *newsmcsk = &new_smc->sk;

	FUNC0(newsmcsk);
	if (newsmcsk->sk_state == SMC_INIT)
		newsmcsk->sk_state = SMC_ACTIVE;

	FUNC1(new_smc);
}