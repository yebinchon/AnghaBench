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
struct TYPE_4__ {TYPE_1__* lgr; } ;
struct smc_sock {TYPE_2__ conn; } ;
struct smc_init_info {scalar_t__ cln_first_contact; int /*<<< orphan*/  ism_gid; } ;
struct smc_clc_msg_smcd {int /*<<< orphan*/  gid; } ;
struct smc_clc_msg_proposal {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  smcd; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  peer_gid; } ;

/* Variables and functions */
 int SMC_CLC_DECL_MEM ; 
 int SMC_CLC_DECL_SMCDNOTALK ; 
 scalar_t__ SMC_FIRST_CONTACT ; 
 scalar_t__ FUNC0 (struct smc_sock*,int) ; 
 int FUNC1 (struct smc_sock*,struct smc_init_info*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct smc_clc_msg_smcd* FUNC3 (struct smc_clc_msg_proposal*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct smc_sock *new_smc,
			       struct smc_clc_msg_proposal *pclc,
			       struct smc_init_info *ini)
{
	struct smc_clc_msg_smcd *pclc_smcd;
	int rc;

	pclc_smcd = FUNC3(pclc);
	ini->ism_gid = pclc_smcd->gid;
	rc = FUNC1(new_smc, ini);
	if (rc)
		return rc;

	/* Check if peer can be reached via ISM device */
	if (FUNC4(new_smc->conn.lgr->peer_gid,
			    new_smc->conn.lgr->vlan_id,
			    new_smc->conn.lgr->smcd)) {
		if (ini->cln_first_contact == SMC_FIRST_CONTACT)
			FUNC5(new_smc->conn.lgr);
		FUNC2(&new_smc->conn);
		return SMC_CLC_DECL_SMCDNOTALK;
	}

	/* Create send and receive buffers */
	if (FUNC0(new_smc, true)) {
		if (ini->cln_first_contact == SMC_FIRST_CONTACT)
			FUNC5(new_smc->conn.lgr);
		FUNC2(&new_smc->conn);
		return SMC_CLC_DECL_MEM;
	}

	return 0;
}