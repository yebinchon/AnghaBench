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
struct smc_llc_msg_del_link {TYPE_1__ hd; } ;
struct smc_link_group {scalar_t__ role; } ;
struct smc_link {int dummy; } ;

/* Variables and functions */
 int SMC_LLC_FLAG_RESP ; 
 int /*<<< orphan*/  SMC_LLC_REQ ; 
 int /*<<< orphan*/  SMC_LLC_RESP ; 
 scalar_t__ SMC_SERV ; 
 struct smc_link_group* FUNC0 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_link_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_link_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_llc_msg_del_link*,struct smc_link*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_link*,struct smc_llc_msg_del_link*,int) ; 

__attribute__((used)) static void FUNC6(struct smc_link *link,
				   struct smc_llc_msg_del_link *llc)
{
	struct smc_link_group *lgr = FUNC0(link);

	if (llc->hd.flags & SMC_LLC_FLAG_RESP) {
		if (lgr->role == SMC_SERV)
			FUNC2(lgr);
	} else {
		FUNC1(lgr);
		FUNC3(link);
		if (lgr->role == SMC_SERV) {
			/* client asks to delete this link, send request */
			FUNC4(llc, link, SMC_LLC_REQ, true);
		} else {
			/* server requests to delete this link, send response */
			FUNC4(llc, link, SMC_LLC_RESP, true);
		}
		FUNC5(link, llc, sizeof(*llc));
		FUNC2(lgr);
	}
}