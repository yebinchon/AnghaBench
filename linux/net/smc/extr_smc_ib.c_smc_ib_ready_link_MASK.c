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
struct smc_link_group {scalar_t__ role; } ;
struct smc_link {TYPE_1__* smcibdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  roce_cq_recv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_SOLICITED_MASK ; 
 scalar_t__ SMC_SERV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smc_link_group* FUNC1 (struct smc_link*) ; 
 int FUNC2 (struct smc_link*) ; 
 int FUNC3 (struct smc_link*) ; 
 int FUNC4 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_link*) ; 
 int FUNC6 (struct smc_link*) ; 

int FUNC7(struct smc_link *lnk)
{
	struct smc_link_group *lgr = FUNC1(lnk);
	int rc = 0;

	rc = FUNC2(lnk);
	if (rc)
		goto out;

	rc = FUNC3(lnk);
	if (rc)
		goto out;
	FUNC5(lnk);
	rc = FUNC0(lnk->smcibdev->roce_cq_recv,
			      IB_CQ_SOLICITED_MASK);
	if (rc)
		goto out;
	rc = FUNC6(lnk);
	if (rc)
		goto out;
	FUNC5(lnk);

	if (lgr->role == SMC_SERV) {
		rc = FUNC4(lnk);
		if (rc)
			goto out;
		FUNC5(lnk);
	}
out:
	return rc;
}