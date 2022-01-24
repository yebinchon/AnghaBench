#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ sk_state; } ;
struct TYPE_9__ {int /*<<< orphan*/  rmb_desc; TYPE_2__* lgr; } ;
struct smc_sock {TYPE_3__ sk; scalar_t__ connect_nonblock; TYPE_4__ conn; } ;
struct smc_link {int dummy; } ;
struct smc_init_info {int is_smcd; scalar_t__ cln_first_contact; int /*<<< orphan*/  srv_first_contact; int /*<<< orphan*/  ib_clcqpn; int /*<<< orphan*/ * ib_lcl; } ;
struct TYPE_6__ {int /*<<< orphan*/  flag; } ;
struct smc_clc_msg_accept_confirm {TYPE_1__ hdr; int /*<<< orphan*/  qpn; int /*<<< orphan*/  lcl; } ;
struct TYPE_7__ {struct smc_link* lnk; } ;

/* Variables and functions */
 scalar_t__ SMC_ACTIVE ; 
 int SMC_CLC_DECL_ERR_RDYLNK ; 
 int SMC_CLC_DECL_ERR_REGRMB ; 
 int SMC_CLC_DECL_ERR_RTOK ; 
 int SMC_CLC_DECL_MEM ; 
 scalar_t__ SMC_FIRST_CONTACT ; 
 scalar_t__ SMC_INIT ; 
 size_t SMC_SINGLE_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct smc_sock*,int) ; 
 int FUNC4 (struct smc_sock*) ; 
 int /*<<< orphan*/  smc_client_lgr_pending ; 
 int FUNC5 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct smc_sock*) ; 
 int FUNC7 (struct smc_sock*,struct smc_init_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct smc_sock*,struct smc_clc_msg_accept_confirm*) ; 
 int FUNC9 (struct smc_sock*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct smc_sock*) ; 
 scalar_t__ FUNC11 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC12 (struct smc_link*,struct smc_clc_msg_accept_confirm*) ; 
 scalar_t__ FUNC13 (struct smc_link*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (TYPE_4__*,struct smc_clc_msg_accept_confirm*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (struct smc_sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct smc_sock*) ; 

__attribute__((used)) static int FUNC18(struct smc_sock *smc,
			    struct smc_clc_msg_accept_confirm *aclc,
			    struct smc_init_info *ini)
{
	struct smc_link *link;
	int reason_code = 0;

	ini->is_smcd = false;
	ini->ib_lcl = &aclc->lcl;
	ini->ib_clcqpn = FUNC2(aclc->qpn);
	ini->srv_first_contact = aclc->hdr.flag;

	FUNC0(&smc_client_lgr_pending);
	reason_code = FUNC7(smc, ini);
	if (reason_code) {
		FUNC1(&smc_client_lgr_pending);
		return reason_code;
	}
	link = &smc->conn.lgr->lnk[SMC_SINGLE_LINK];

	FUNC8(smc, aclc);

	/* create send buffer and rmb */
	if (FUNC3(smc, false))
		return FUNC9(smc, SMC_CLC_DECL_MEM,
					 ini->cln_first_contact);

	if (ini->cln_first_contact == SMC_FIRST_CONTACT)
		FUNC12(link, aclc);

	if (FUNC14(&smc->conn, aclc))
		return FUNC9(smc, SMC_CLC_DECL_ERR_RTOK,
					 ini->cln_first_contact);

	FUNC6(smc);
	FUNC16(smc);

	if (ini->cln_first_contact == SMC_FIRST_CONTACT) {
		if (FUNC11(link))
			return FUNC9(smc, SMC_CLC_DECL_ERR_RDYLNK,
						 ini->cln_first_contact);
	} else {
		if (FUNC13(link, smc->conn.rmb_desc, true))
			return FUNC9(smc, SMC_CLC_DECL_ERR_REGRMB,
						 ini->cln_first_contact);
	}
	FUNC15(&smc->conn);

	reason_code = FUNC4(smc);
	if (reason_code)
		return FUNC9(smc, reason_code,
					 ini->cln_first_contact);

	FUNC17(smc);

	if (ini->cln_first_contact == SMC_FIRST_CONTACT) {
		/* QP confirmation over RoCE fabric */
		reason_code = FUNC5(smc);
		if (reason_code)
			return FUNC9(smc, reason_code,
						 ini->cln_first_contact);
	}
	FUNC1(&smc_client_lgr_pending);

	FUNC10(smc);
	smc->connect_nonblock = 0;
	if (smc->sk.sk_state == SMC_INIT)
		smc->sk.sk_state = SMC_ACTIVE;

	return 0;
}