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

/* Variables and functions */
 int SMC_CLC_DECL_MEM ; 
 scalar_t__ FUNC0 (struct smc_sock*,int) ; 
 int FUNC1 (struct smc_sock*,struct smc_init_info*) ; 

__attribute__((used)) static int FUNC2(struct smc_sock *new_smc,
				struct smc_init_info *ini)
{
	int rc;

	/* allocate connection / link group */
	rc = FUNC1(new_smc, ini);
	if (rc)
		return rc;

	/* create send buffer and rmb */
	if (FUNC0(new_smc, false))
		return SMC_CLC_DECL_MEM;

	return 0;
}