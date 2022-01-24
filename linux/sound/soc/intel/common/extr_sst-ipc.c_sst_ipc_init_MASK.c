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
struct sst_generic_ipc {int /*<<< orphan*/  kwork; int /*<<< orphan*/  wait_txq; int /*<<< orphan*/  empty_list; int /*<<< orphan*/  rx_list; int /*<<< orphan*/  tx_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipc_tx_msgs ; 
 int FUNC3 (struct sst_generic_ipc*) ; 

int FUNC4(struct sst_generic_ipc *ipc)
{
	int ret;

	FUNC0(&ipc->tx_list);
	FUNC0(&ipc->rx_list);
	FUNC0(&ipc->empty_list);
	FUNC2(&ipc->wait_txq);

	ret = FUNC3(ipc);
	if (ret < 0)
		return -ENOMEM;

	FUNC1(&ipc->kwork, ipc_tx_msgs);
	return 0;
}