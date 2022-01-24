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
struct nci_ops {scalar_t__ n_prop_ops; int /*<<< orphan*/ * prop_ops; int /*<<< orphan*/  send; int /*<<< orphan*/  close; int /*<<< orphan*/  open; } ;
struct nci_dev {int tx_headroom; int tx_tailroom; int /*<<< orphan*/  nfc_dev; int /*<<< orphan*/  hci_dev; int /*<<< orphan*/  req_completion; struct nci_ops* ops; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NCI_DATA_HDR_SIZE ; 
 scalar_t__ NCI_MAX_PROPRIETARY_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nci_dev*) ; 
 struct nci_dev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*) ; 
 int /*<<< orphan*/  nci_nfc_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 

struct nci_dev *FUNC9(struct nci_ops *ops,
				    __u32 supported_protocols,
				    int tx_headroom, int tx_tailroom)
{
	struct nci_dev *ndev;

	FUNC7("supported_protocols 0x%x\n", supported_protocols);

	if (!ops->open || !ops->close || !ops->send)
		return NULL;

	if (!supported_protocols)
		return NULL;

	ndev = FUNC2(sizeof(struct nci_dev), GFP_KERNEL);
	if (!ndev)
		return NULL;

	ndev->ops = ops;

	if (ops->n_prop_ops > NCI_MAX_PROPRIETARY_CMD) {
		FUNC8("Too many proprietary commands: %zd\n",
		       ops->n_prop_ops);
		ops->prop_ops = NULL;
		ops->n_prop_ops = 0;
	}

	ndev->tx_headroom = tx_headroom;
	ndev->tx_tailroom = tx_tailroom;
	FUNC0(&ndev->req_completion);

	ndev->nfc_dev = FUNC4(&nci_nfc_ops,
					    supported_protocols,
					    tx_headroom + NCI_DATA_HDR_SIZE,
					    tx_tailroom);
	if (!ndev->nfc_dev)
		goto free_nci;

	ndev->hci_dev = FUNC3(ndev);
	if (!ndev->hci_dev)
		goto free_nfc;

	FUNC6(ndev->nfc_dev, ndev);

	return ndev;

free_nfc:
	FUNC5(ndev->nfc_dev);
free_nci:
	FUNC1(ndev);
	return NULL;
}