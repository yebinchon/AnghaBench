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
struct smc_link {int /*<<< orphan*/ * wr_rx_bufs; int /*<<< orphan*/ * wr_tx_bufs; int /*<<< orphan*/ * wr_tx_ibs; int /*<<< orphan*/ * wr_rx_ibs; int /*<<< orphan*/ * wr_tx_rdmas; int /*<<< orphan*/ * wr_rx_sges; int /*<<< orphan*/ * wr_tx_rdma_sges; int /*<<< orphan*/ * wr_tx_sges; int /*<<< orphan*/ * wr_tx_mask; int /*<<< orphan*/ * wr_tx_pends; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct smc_link *lnk)
{
	FUNC0(lnk->wr_tx_pends);
	lnk->wr_tx_pends = NULL;
	FUNC0(lnk->wr_tx_mask);
	lnk->wr_tx_mask = NULL;
	FUNC0(lnk->wr_tx_sges);
	lnk->wr_tx_sges = NULL;
	FUNC0(lnk->wr_tx_rdma_sges);
	lnk->wr_tx_rdma_sges = NULL;
	FUNC0(lnk->wr_rx_sges);
	lnk->wr_rx_sges = NULL;
	FUNC0(lnk->wr_tx_rdmas);
	lnk->wr_tx_rdmas = NULL;
	FUNC0(lnk->wr_rx_ibs);
	lnk->wr_rx_ibs = NULL;
	FUNC0(lnk->wr_tx_ibs);
	lnk->wr_tx_ibs = NULL;
	FUNC0(lnk->wr_tx_bufs);
	lnk->wr_tx_bufs = NULL;
	FUNC0(lnk->wr_rx_bufs);
	lnk->wr_rx_bufs = NULL;
}