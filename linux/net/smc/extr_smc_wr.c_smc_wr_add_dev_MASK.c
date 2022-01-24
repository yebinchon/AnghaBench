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
struct smc_ib_device {int /*<<< orphan*/  send_tasklet; int /*<<< orphan*/  recv_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  smc_wr_rx_tasklet_fn ; 
 int /*<<< orphan*/  smc_wr_tx_tasklet_fn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC1(struct smc_ib_device *smcibdev)
{
	FUNC0(&smcibdev->recv_tasklet, smc_wr_rx_tasklet_fn,
		     (unsigned long)smcibdev);
	FUNC0(&smcibdev->send_tasklet, smc_wr_tx_tasklet_fn,
		     (unsigned long)smcibdev);
}