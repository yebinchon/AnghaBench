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
struct TYPE_2__ {int flags; } ;
struct smc_llc_msg_test_link {TYPE_1__ hd; } ;
struct smc_link {scalar_t__ state; int /*<<< orphan*/  llc_testlink_resp; } ;

/* Variables and functions */
 int SMC_LLC_FLAG_RESP ; 
 scalar_t__ SMC_LNK_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_link*,struct smc_llc_msg_test_link*,int) ; 

__attribute__((used)) static void FUNC2(struct smc_link *link,
				 struct smc_llc_msg_test_link *llc)
{
	if (llc->hd.flags & SMC_LLC_FLAG_RESP) {
		if (link->state == SMC_LNK_ACTIVE)
			FUNC0(&link->llc_testlink_resp);
	} else {
		llc->hd.flags |= SMC_LLC_FLAG_RESP;
		FUNC1(link, llc, sizeof(*llc));
	}
}