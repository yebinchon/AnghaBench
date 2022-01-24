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
struct nci_dev {int /*<<< orphan*/  req_lock; scalar_t__ flags; int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  cmd_timer; TYPE_1__* ops; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  tx_wq; int /*<<< orphan*/  rx_wq; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  rx_q; int /*<<< orphan*/  data_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct nci_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  NCI_INIT ; 
 int /*<<< orphan*/  NCI_RESET_TIMEOUT ; 
 int /*<<< orphan*/  NCI_UP ; 
 int /*<<< orphan*/  FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_reset_req ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC13(struct nci_dev *ndev)
{
	FUNC8(ndev, ENODEV);
	FUNC6(&ndev->req_lock);

	if (!FUNC12(NCI_UP, &ndev->flags)) {
		FUNC3(&ndev->cmd_timer);
		FUNC3(&ndev->data_timer);
		FUNC7(&ndev->req_lock);
		return 0;
	}

	/* Drop RX and TX queues */
	FUNC10(&ndev->rx_q);
	FUNC10(&ndev->tx_q);

	/* Flush RX and TX wq */
	FUNC4(ndev->rx_wq);
	FUNC4(ndev->tx_wq);

	/* Reset device */
	FUNC10(&ndev->cmd_q);
	FUNC1(&ndev->cmd_cnt, 1);

	FUNC9(NCI_INIT, &ndev->flags);
	FUNC0(ndev, nci_reset_req, 0,
		      FUNC5(NCI_RESET_TIMEOUT));

	/* After this point our queues are empty
	 * and no works are scheduled.
	 */
	ndev->ops->close(ndev);

	FUNC2(NCI_INIT, &ndev->flags);

	FUNC3(&ndev->cmd_timer);

	/* Flush cmd wq */
	FUNC4(ndev->cmd_wq);

	/* Clear flags */
	ndev->flags = 0;

	FUNC7(&ndev->req_lock);

	return 0;
}