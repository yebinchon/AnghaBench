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
struct sk_buff {scalar_t__ data; } ;
struct nci_rf_deactivate_ntf {int type; int /*<<< orphan*/  reason; } ;
struct nci_dev {int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/ * rx_data_reassembly; int /*<<< orphan*/  tx_q; struct nci_conn_info* rf_conn_info; } ;
struct nci_conn_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  NCI_DATA_EXCHANGE ; 
#define  NCI_DEACTIVATE_TYPE_DISCOVERY 131 
#define  NCI_DEACTIVATE_TYPE_IDLE_MODE 130 
#define  NCI_DEACTIVATE_TYPE_SLEEP_AF_MODE 129 
#define  NCI_DEACTIVATE_TYPE_SLEEP_MODE 128 
 int /*<<< orphan*/  NCI_DISCOVERY ; 
 int /*<<< orphan*/  NCI_IDLE ; 
 int /*<<< orphan*/  NCI_STATIC_RF_CONN_ID ; 
 int /*<<< orphan*/  NCI_STATUS_OK ; 
 int /*<<< orphan*/  NCI_W4_HOST_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct nci_dev *ndev,
					 struct sk_buff *skb)
{
	struct nci_conn_info    *conn_info;
	struct nci_rf_deactivate_ntf *ntf = (void *) skb->data;

	FUNC5("entry, type 0x%x, reason 0x%x\n", ntf->type, ntf->reason);

	conn_info = ndev->rf_conn_info;
	if (!conn_info)
		return;

	/* drop tx data queue */
	FUNC6(&ndev->tx_q);

	/* drop partial rx data packet */
	if (ndev->rx_data_reassembly) {
		FUNC1(ndev->rx_data_reassembly);
		ndev->rx_data_reassembly = NULL;
	}

	/* complete the data exchange transaction, if exists */
	if (FUNC7(NCI_DATA_EXCHANGE, &ndev->flags))
		FUNC3(ndev, NULL, NCI_STATIC_RF_CONN_ID,
					   -EIO);

	switch (ntf->type) {
	case NCI_DEACTIVATE_TYPE_IDLE_MODE:
		FUNC2(ndev);
		FUNC0(&ndev->state, NCI_IDLE);
		break;
	case NCI_DEACTIVATE_TYPE_SLEEP_MODE:
	case NCI_DEACTIVATE_TYPE_SLEEP_AF_MODE:
		FUNC0(&ndev->state, NCI_W4_HOST_SELECT);
		break;
	case NCI_DEACTIVATE_TYPE_DISCOVERY:
		FUNC2(ndev);
		FUNC0(&ndev->state, NCI_DISCOVERY);
		break;
	}

	FUNC4(ndev, NCI_STATUS_OK);
}