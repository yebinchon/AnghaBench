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
struct nfc_hci_dev {int /*<<< orphan*/  msg_tx_mutex; int /*<<< orphan*/  ndev; int /*<<< orphan*/ * cmd_pending_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfc_hci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct nfc_hci_dev *hdev, int err)
{
	FUNC1(&hdev->msg_tx_mutex);

	if (hdev->cmd_pending_msg == NULL) {
		FUNC3(hdev->ndev, err);
		goto exit;
	}

	FUNC0(hdev, err, NULL);

exit:
	FUNC2(&hdev->msg_tx_mutex);
}