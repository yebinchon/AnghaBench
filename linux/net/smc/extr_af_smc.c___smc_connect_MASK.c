#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smc_sock {TYPE_3__* clcsock; int /*<<< orphan*/  fallback_rsn; scalar_t__ use_fallback; } ;
struct smc_init_info {int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int path; } ;
struct smc_clc_msg_accept_confirm {TYPE_1__ hdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  syn_smc; } ;

/* Variables and functions */
 int SMC_CLC_DECL_GETVLANERR ; 
 int SMC_CLC_DECL_IPSEC ; 
 int SMC_CLC_DECL_MODEUNSUPP ; 
 int SMC_CLC_DECL_NOSMCDEV ; 
 int /*<<< orphan*/  SMC_CLC_DECL_PEERNOSMC ; 
 int SMC_TYPE_B ; 
 int SMC_TYPE_D ; 
 int SMC_TYPE_R ; 
 int FUNC0 (struct smc_sock*,int,struct smc_clc_msg_accept_confirm*,struct smc_init_info*) ; 
 int FUNC1 (struct smc_sock*,int) ; 
 int FUNC2 (struct smc_sock*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smc_sock*,struct smc_clc_msg_accept_confirm*,struct smc_init_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_sock*,int,struct smc_init_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_sock*,struct smc_init_info*) ; 
 int FUNC6 (struct smc_sock*,struct smc_clc_msg_accept_confirm*,struct smc_init_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct smc_sock*,struct smc_init_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct smc_sock*,struct smc_init_info*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,struct smc_init_info*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct smc_sock*) ; 

__attribute__((used)) static int FUNC12(struct smc_sock *smc)
{
	bool ism_supported = false, rdma_supported = false;
	struct smc_clc_msg_accept_confirm aclc;
	struct smc_init_info ini = {0};
	int smc_type;
	int rc = 0;

	if (smc->use_fallback)
		return FUNC2(smc, smc->fallback_rsn);

	/* if peer has not signalled SMC-capability, fall back */
	if (!FUNC10(smc->clcsock->sk)->syn_smc)
		return FUNC2(smc, SMC_CLC_DECL_PEERNOSMC);

	/* IPSec connections opt out of SMC-R optimizations */
	if (FUNC11(smc))
		return FUNC1(smc, SMC_CLC_DECL_IPSEC);

	/* get vlan id from IP device */
	if (FUNC9(smc->clcsock, &ini))
		return FUNC1(smc,
						    SMC_CLC_DECL_GETVLANERR);

	/* check if there is an ism device available */
	if (!FUNC7(smc, &ini) &&
	    !FUNC5(smc, &ini)) {
		/* ISM is supported for this connection */
		ism_supported = true;
		smc_type = SMC_TYPE_D;
	}

	/* check if there is a rdma device available */
	if (!FUNC8(smc, &ini)) {
		/* RDMA is supported for this connection */
		rdma_supported = true;
		if (ism_supported)
			smc_type = SMC_TYPE_B; /* both */
		else
			smc_type = SMC_TYPE_R; /* only RDMA */
	}

	/* if neither ISM nor RDMA are supported, fallback */
	if (!rdma_supported && !ism_supported)
		return FUNC1(smc, SMC_CLC_DECL_NOSMCDEV);

	/* perform CLC handshake */
	rc = FUNC0(smc, smc_type, &aclc, &ini);
	if (rc) {
		FUNC4(smc, ism_supported, &ini);
		return FUNC1(smc, rc);
	}

	/* depending on previous steps, connect using rdma or ism */
	if (rdma_supported && aclc.hdr.path == SMC_TYPE_R)
		rc = FUNC6(smc, &aclc, &ini);
	else if (ism_supported && aclc.hdr.path == SMC_TYPE_D)
		rc = FUNC3(smc, &aclc, &ini);
	else
		rc = SMC_CLC_DECL_MODEUNSUPP;
	if (rc) {
		FUNC4(smc, ism_supported, &ini);
		return FUNC1(smc, rc);
	}

	FUNC4(smc, ism_supported, &ini);
	return 0;
}