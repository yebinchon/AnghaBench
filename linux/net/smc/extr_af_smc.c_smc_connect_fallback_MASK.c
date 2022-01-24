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
struct TYPE_2__ {scalar_t__ sk_state; } ;
struct smc_sock {int fallback_rsn; TYPE_1__ sk; scalar_t__ connect_nonblock; } ;

/* Variables and functions */
 scalar_t__ SMC_ACTIVE ; 
 scalar_t__ SMC_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_sock*) ; 

__attribute__((used)) static int FUNC2(struct smc_sock *smc, int reason_code)
{
	FUNC1(smc);
	smc->fallback_rsn = reason_code;
	FUNC0(smc);
	smc->connect_nonblock = 0;
	if (smc->sk.sk_state == SMC_INIT)
		smc->sk.sk_state = SMC_ACTIVE;
	return 0;
}