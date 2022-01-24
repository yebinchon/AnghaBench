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
struct smc_sock {int dummy; } ;
struct smc_init_info {int dummy; } ;
struct smc_clc_msg_accept_confirm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLC_WAIT_TIME ; 
 int /*<<< orphan*/  SMC_CLC_ACCEPT ; 
 int FUNC0 (struct smc_sock*,int,struct smc_init_info*) ; 
 int FUNC1 (struct smc_sock*,struct smc_clc_msg_accept_confirm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct smc_sock *smc, int smc_type,
			   struct smc_clc_msg_accept_confirm *aclc,
			   struct smc_init_info *ini)
{
	int rc = 0;

	/* do inband token exchange */
	rc = FUNC0(smc, smc_type, ini);
	if (rc)
		return rc;
	/* receive SMC Accept CLC message */
	return FUNC1(smc, aclc, sizeof(*aclc), SMC_CLC_ACCEPT,
				CLC_WAIT_TIME);
}