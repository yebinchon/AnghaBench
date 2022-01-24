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
struct TYPE_2__ {int /*<<< orphan*/  lgr; } ;
struct smc_sock {int fallback_rsn; TYPE_1__ conn; } ;

/* Variables and functions */
 int SMC_CLC_DECL_PEERDECL ; 
 int SMC_FIRST_CONTACT ; 
 scalar_t__ FUNC0 (struct smc_sock*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_sock*) ; 

__attribute__((used)) static void FUNC6(struct smc_sock *new_smc, int reason_code,
			       int local_contact)
{
	/* RDMA setup failed, switch back to TCP */
	if (local_contact == SMC_FIRST_CONTACT)
		FUNC2(new_smc->conn.lgr);
	if (reason_code < 0) { /* error, no fallback possible */
		FUNC4(new_smc);
		return;
	}
	FUNC1(&new_smc->conn);
	FUNC5(new_smc);
	new_smc->fallback_rsn = reason_code;
	if (reason_code && reason_code != SMC_CLC_DECL_PEERDECL) {
		if (FUNC0(new_smc, reason_code) < 0) {
			FUNC4(new_smc);
			return;
		}
	}
	FUNC3(new_smc);
}