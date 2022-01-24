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
struct nfc_hci_dev {int /*<<< orphan*/  ndev; int /*<<< orphan*/  msg_rx_queue; int /*<<< orphan*/  msg_rx_work; int /*<<< orphan*/  rx_hcp_frags; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  msg_tx_work; int /*<<< orphan*/  msg_tx_queue; int /*<<< orphan*/  msg_tx_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfc_hci_cmd_timeout ; 
 int /*<<< orphan*/  nfc_hci_msg_rx_work ; 
 int /*<<< orphan*/  nfc_hci_msg_tx_work ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct nfc_hci_dev *hdev)
{
	FUNC2(&hdev->msg_tx_mutex);

	FUNC0(&hdev->msg_tx_queue);

	FUNC1(&hdev->msg_tx_work, nfc_hci_msg_tx_work);

	FUNC5(&hdev->cmd_timer, nfc_hci_cmd_timeout, 0);

	FUNC4(&hdev->rx_hcp_frags);

	FUNC1(&hdev->msg_rx_work, nfc_hci_msg_rx_work);

	FUNC4(&hdev->msg_rx_queue);

	return FUNC3(hdev->ndev);
}