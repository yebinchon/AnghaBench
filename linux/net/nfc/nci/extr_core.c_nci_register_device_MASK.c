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
struct nci_dev {void* cmd_wq; void* rx_wq; TYPE_1__* nfc_dev; int /*<<< orphan*/  conn_info_list; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  data_timer; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  rx_q; int /*<<< orphan*/  cmd_q; void* tx_wq; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  cmd_work; scalar_t__ flags; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 char* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nci_cmd_timer ; 
 int /*<<< orphan*/  nci_cmd_work ; 
 int /*<<< orphan*/  nci_data_timer ; 
 int /*<<< orphan*/  nci_rx_work ; 
 int /*<<< orphan*/  nci_tx_work ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct nci_dev *ndev)
{
	int rc;
	struct device *dev = &ndev->nfc_dev->dev;
	char name[32];

	ndev->flags = 0;

	FUNC1(&ndev->cmd_work, nci_cmd_work);
	FUNC8(name, sizeof(name), "%s_nci_cmd_wq", FUNC4(dev));
	ndev->cmd_wq = FUNC2(name);
	if (!ndev->cmd_wq) {
		rc = -ENOMEM;
		goto exit;
	}

	FUNC1(&ndev->rx_work, nci_rx_work);
	FUNC8(name, sizeof(name), "%s_nci_rx_wq", FUNC4(dev));
	ndev->rx_wq = FUNC2(name);
	if (!ndev->rx_wq) {
		rc = -ENOMEM;
		goto destroy_cmd_wq_exit;
	}

	FUNC1(&ndev->tx_work, nci_tx_work);
	FUNC8(name, sizeof(name), "%s_nci_tx_wq", FUNC4(dev));
	ndev->tx_wq = FUNC2(name);
	if (!ndev->tx_wq) {
		rc = -ENOMEM;
		goto destroy_rx_wq_exit;
	}

	FUNC7(&ndev->cmd_q);
	FUNC7(&ndev->rx_q);
	FUNC7(&ndev->tx_q);

	FUNC9(&ndev->cmd_timer, nci_cmd_timer, 0);
	FUNC9(&ndev->data_timer, nci_data_timer, 0);

	FUNC5(&ndev->req_lock);
	FUNC0(&ndev->conn_info_list);

	rc = FUNC6(ndev->nfc_dev);
	if (rc)
		goto destroy_rx_wq_exit;

	goto exit;

destroy_rx_wq_exit:
	FUNC3(ndev->rx_wq);

destroy_cmd_wq_exit:
	FUNC3(ndev->cmd_wq);

exit:
	return rc;
}