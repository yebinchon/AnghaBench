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
struct snd_sof_ipc {int disable_ipc_tx; int /*<<< orphan*/  tx_mutex; } ;
struct snd_sof_dev {struct snd_sof_ipc* ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct snd_sof_dev *sdev)
{
	struct snd_sof_ipc *ipc = sdev->ipc;

	/* disable sending of ipc's */
	FUNC0(&ipc->tx_mutex);
	ipc->disable_ipc_tx = true;
	FUNC1(&ipc->tx_mutex);
}