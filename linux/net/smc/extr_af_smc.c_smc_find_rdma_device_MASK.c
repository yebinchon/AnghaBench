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
struct smc_sock {TYPE_1__* clcsock; } ;
struct smc_init_info {int /*<<< orphan*/  ib_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int SMC_CLC_DECL_NOSMCRDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct smc_init_info*) ; 

__attribute__((used)) static int FUNC1(struct smc_sock *smc, struct smc_init_info *ini)
{
	/* PNET table look up: search active ib_device and port
	 * within same PNETID that also contains the ethernet device
	 * used for the internal TCP socket
	 */
	FUNC0(smc->clcsock->sk, ini);
	if (!ini->ib_dev)
		return SMC_CLC_DECL_NOSMCRDEV;
	return 0;
}