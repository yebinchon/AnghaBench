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
typedef  scalar_t__ u32 ;
struct nfc_hci_ops {int /*<<< orphan*/ * xmit; } ;
struct nfc_hci_init_data {int dummy; } ;
struct nfc_hci_dev {int max_data_link_payload; unsigned long quirks; int /*<<< orphan*/  ndev; struct nfc_hci_init_data init_data; struct nfc_hci_ops* ops; int /*<<< orphan*/ * llc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HCI_CMDS_HEADROOM ; 
 int /*<<< orphan*/  hci_nfc_ops ; 
 int /*<<< orphan*/  FUNC0 (struct nfc_hci_dev*) ; 
 struct nfc_hci_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  nfc_hci_llc_failure ; 
 int /*<<< orphan*/  nfc_hci_recv_from_llc ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,struct nfc_hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct nfc_hci_dev*) ; 

struct nfc_hci_dev *FUNC7(struct nfc_hci_ops *ops,
					    struct nfc_hci_init_data *init_data,
					    unsigned long quirks,
					    u32 protocols,
					    const char *llc_name,
					    int tx_headroom,
					    int tx_tailroom,
					    int max_link_payload)
{
	struct nfc_hci_dev *hdev;

	if (ops->xmit == NULL)
		return NULL;

	if (protocols == 0)
		return NULL;

	hdev = FUNC1(sizeof(struct nfc_hci_dev), GFP_KERNEL);
	if (hdev == NULL)
		return NULL;

	hdev->llc = FUNC4(llc_name, hdev, ops->xmit,
				     nfc_hci_recv_from_llc, tx_headroom,
				     tx_tailroom, nfc_hci_llc_failure);
	if (hdev->llc == NULL) {
		FUNC0(hdev);
		return NULL;
	}

	hdev->ndev = FUNC2(&hci_nfc_ops, protocols,
					 tx_headroom + HCI_CMDS_HEADROOM,
					 tx_tailroom);
	if (!hdev->ndev) {
		FUNC5(hdev->llc);
		FUNC0(hdev);
		return NULL;
	}

	hdev->ops = ops;
	hdev->max_data_link_payload = max_link_payload;
	hdev->init_data = *init_data;

	FUNC6(hdev->ndev, hdev);

	FUNC3(hdev);

	hdev->quirks = quirks;

	return hdev;
}