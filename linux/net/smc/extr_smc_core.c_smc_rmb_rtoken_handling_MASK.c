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
struct smc_connection {scalar_t__ rtoken_idx; int /*<<< orphan*/  lgr; } ;
struct smc_clc_msg_accept_confirm {int /*<<< orphan*/  rmb_rkey; int /*<<< orphan*/  rmb_dma_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct smc_connection *conn,
			    struct smc_clc_msg_accept_confirm *clc)
{
	conn->rtoken_idx = FUNC0(conn->lgr, clc->rmb_dma_addr,
					  clc->rmb_rkey);
	if (conn->rtoken_idx < 0)
		return conn->rtoken_idx;
	return 0;
}