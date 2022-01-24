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
struct TYPE_4__ {int /*<<< orphan*/  rmb_desc; TYPE_1__* lgr; } ;
struct smc_sock {TYPE_2__ conn; } ;
struct smc_link {int dummy; } ;
struct TYPE_3__ {struct smc_link* lnk; } ;

/* Variables and functions */
 int SMC_CLC_DECL_ERR_REGRMB ; 
 int SMC_FIRST_CONTACT ; 
 size_t SMC_SINGLE_LINK ; 
 scalar_t__ FUNC0 (struct smc_link*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(struct smc_sock *new_smc, int local_contact)
{
	struct smc_link *link = &new_smc->conn.lgr->lnk[SMC_SINGLE_LINK];

	if (local_contact != SMC_FIRST_CONTACT) {
		if (FUNC0(link, new_smc->conn.rmb_desc, true))
			return SMC_CLC_DECL_ERR_REGRMB;
	}
	FUNC1(&new_smc->conn);

	return 0;
}