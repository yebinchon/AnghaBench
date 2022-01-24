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
struct smc_sock {int /*<<< orphan*/  sk; } ;
struct smc_cdc_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_sock*,struct smc_cdc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct smc_sock *smc, struct smc_cdc_msg *cdc)
{
	FUNC3(&smc->sk);
	FUNC0(&smc->sk);
	FUNC2(smc, cdc);
	FUNC1(&smc->sk);
	FUNC4(&smc->sk); /* no free sk in softirq-context */
}