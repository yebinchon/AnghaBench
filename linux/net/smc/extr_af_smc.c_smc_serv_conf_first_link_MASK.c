#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rmb_desc; struct smc_link_group* lgr; } ;
struct smc_sock {TYPE_2__ conn; TYPE_1__* clcsock; } ;
struct smc_link_group {struct smc_link* lnk; } ;
struct smc_link {int ibport; int /*<<< orphan*/  llc_add_resp; int /*<<< orphan*/  gid; TYPE_3__* smcibdev; scalar_t__ llc_confirm_resp_rc; int /*<<< orphan*/  llc_confirm_resp; } ;
struct smc_clc_msg_decline {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sysctl_tcp_keepalive_time; } ;
struct net {TYPE_4__ ipv4; } ;
typedef  int /*<<< orphan*/  dclc ;
struct TYPE_7__ {int /*<<< orphan*/ * mac; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLC_WAIT_TIME_SHORT ; 
 int EAGAIN ; 
 int /*<<< orphan*/  SMC_CLC_DECLINE ; 
 int SMC_CLC_DECL_ERR_REGRMB ; 
 int SMC_CLC_DECL_RMBE_EC ; 
 int SMC_CLC_DECL_TIMEOUT_AL ; 
 int SMC_CLC_DECL_TIMEOUT_CL ; 
 int /*<<< orphan*/  SMC_LLC_REQ ; 
 int /*<<< orphan*/  SMC_LLC_WAIT_FIRST_TIME ; 
 int /*<<< orphan*/  SMC_LLC_WAIT_TIME ; 
 size_t SMC_SINGLE_LINK ; 
 int FUNC0 (struct smc_sock*,struct smc_clc_msg_decline*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_link*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct smc_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smc_link*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct smc_link*,int /*<<< orphan*/ ,int) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct smc_sock *smc)
{
	struct net *net = FUNC5(smc->clcsock->sk);
	struct smc_link_group *lgr = smc->conn.lgr;
	struct smc_link *link;
	int rest;
	int rc;

	link = &lgr->lnk[SMC_SINGLE_LINK];

	if (FUNC4(link, smc->conn.rmb_desc, false))
		return SMC_CLC_DECL_ERR_REGRMB;

	/* send CONFIRM LINK request to client over the RoCE fabric */
	rc = FUNC3(link, SMC_LLC_REQ);
	if (rc < 0)
		return SMC_CLC_DECL_TIMEOUT_CL;

	/* receive CONFIRM LINK response from client over the RoCE fabric */
	rest = FUNC6(
		&link->llc_confirm_resp,
		SMC_LLC_WAIT_FIRST_TIME);
	if (rest <= 0) {
		struct smc_clc_msg_decline dclc;

		rc = FUNC0(smc, &dclc, sizeof(dclc),
				      SMC_CLC_DECLINE, CLC_WAIT_TIME_SHORT);
		return rc == -EAGAIN ? SMC_CLC_DECL_TIMEOUT_CL : rc;
	}

	if (link->llc_confirm_resp_rc)
		return SMC_CLC_DECL_RMBE_EC;

	/* send ADD LINK request to client over the RoCE fabric */
	rc = FUNC2(link,
				   link->smcibdev->mac[link->ibport - 1],
				   link->gid, SMC_LLC_REQ);
	if (rc < 0)
		return SMC_CLC_DECL_TIMEOUT_AL;

	/* receive ADD LINK response from client over the RoCE fabric */
	rest = FUNC6(&link->llc_add_resp,
							 SMC_LLC_WAIT_TIME);
	if (rest <= 0) {
		struct smc_clc_msg_decline dclc;

		rc = FUNC0(smc, &dclc, sizeof(dclc),
				      SMC_CLC_DECLINE, CLC_WAIT_TIME_SHORT);
		return rc == -EAGAIN ? SMC_CLC_DECL_TIMEOUT_AL : rc;
	}

	FUNC1(link, net->ipv4.sysctl_tcp_keepalive_time);

	return 0;
}