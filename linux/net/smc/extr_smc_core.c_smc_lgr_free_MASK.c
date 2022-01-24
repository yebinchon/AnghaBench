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
struct smc_link_group {int /*<<< orphan*/ * lnk; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  smcd; scalar_t__ is_smcd; } ;

/* Variables and functions */
 size_t SMC_SINGLE_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct smc_link_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_link_group*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct smc_link_group *lgr)
{
	FUNC2(lgr);
	if (lgr->is_smcd)
		FUNC1(lgr->smcd, lgr->vlan_id);
	else
		FUNC3(&lgr->lnk[SMC_SINGLE_LINK]);
	FUNC0(lgr);
}