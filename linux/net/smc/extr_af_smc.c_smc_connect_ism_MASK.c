#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sk_state; } ;
struct smc_sock {TYPE_2__ sk; scalar_t__ connect_nonblock; } ;
struct smc_init_info {int is_smcd; int /*<<< orphan*/  cln_first_contact; int /*<<< orphan*/  srv_first_contact; int /*<<< orphan*/  ism_gid; } ;
struct TYPE_3__ {int /*<<< orphan*/  flag; } ;
struct smc_clc_msg_accept_confirm {TYPE_1__ hdr; int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 scalar_t__ SMC_ACTIVE ; 
 int SMC_CLC_DECL_MEM ; 
 scalar_t__ SMC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct smc_sock*,int) ; 
 int FUNC3 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_sock*) ; 
 int FUNC5 (struct smc_sock*,struct smc_init_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct smc_sock*,struct smc_clc_msg_accept_confirm*) ; 
 int FUNC7 (struct smc_sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct smc_sock*) ; 
 int /*<<< orphan*/  smc_server_lgr_pending ; 
 int /*<<< orphan*/  FUNC10 (struct smc_sock*) ; 

__attribute__((used)) static int FUNC11(struct smc_sock *smc,
			   struct smc_clc_msg_accept_confirm *aclc,
			   struct smc_init_info *ini)
{
	int rc = 0;

	ini->is_smcd = true;
	ini->ism_gid = aclc->gid;
	ini->srv_first_contact = aclc->hdr.flag;

	/* there is only one lgr role for SMC-D; use server lock */
	FUNC0(&smc_server_lgr_pending);
	rc = FUNC5(smc, ini);
	if (rc) {
		FUNC1(&smc_server_lgr_pending);
		return rc;
	}

	/* Create send and receive buffers */
	if (FUNC2(smc, true))
		return FUNC7(smc, SMC_CLC_DECL_MEM,
					 ini->cln_first_contact);

	FUNC6(smc, aclc);
	FUNC4(smc);
	FUNC9(smc);
	FUNC10(smc);

	rc = FUNC3(smc);
	if (rc)
		return FUNC7(smc, rc, ini->cln_first_contact);
	FUNC1(&smc_server_lgr_pending);

	FUNC8(smc);
	smc->connect_nonblock = 0;
	if (smc->sk.sk_state == SMC_INIT)
		smc->sk.sk_state = SMC_ACTIVE;

	return 0;
}