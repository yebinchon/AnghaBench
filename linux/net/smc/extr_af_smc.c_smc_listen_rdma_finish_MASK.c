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
struct smc_link {int dummy; } ;
struct smc_clc_msg_accept_confirm {int dummy; } ;
struct TYPE_3__ {struct smc_link* lnk; } ;

/* Variables and functions */
 int SMC_CLC_DECL_ERR_RDYLNK ; 
 int SMC_CLC_DECL_ERR_RTOK ; 
 int SMC_FIRST_CONTACT ; 
 size_t SMC_SINGLE_LINK ; 
 scalar_t__ FUNC0 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_link*,struct smc_clc_msg_accept_confirm*) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_sock*,int,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,struct smc_clc_msg_accept_confirm*) ; 
 int FUNC4 (struct smc_sock*) ; 

__attribute__((used)) static int FUNC5(struct smc_sock *new_smc,
				  struct smc_clc_msg_accept_confirm *cclc,
				  int local_contact)
{
	struct smc_link *link = &new_smc->conn.lgr->lnk[SMC_SINGLE_LINK];
	int reason_code = 0;

	if (local_contact == SMC_FIRST_CONTACT)
		FUNC1(link, cclc);

	if (FUNC3(&new_smc->conn, cclc)) {
		reason_code = SMC_CLC_DECL_ERR_RTOK;
		goto decline;
	}

	if (local_contact == SMC_FIRST_CONTACT) {
		if (FUNC0(link)) {
			reason_code = SMC_CLC_DECL_ERR_RDYLNK;
			goto decline;
		}
		/* QP confirmation over RoCE fabric */
		reason_code = FUNC4(new_smc);
		if (reason_code)
			goto decline;
	}
	return 0;

decline:
	FUNC2(new_smc, reason_code, local_contact);
	return reason_code;
}