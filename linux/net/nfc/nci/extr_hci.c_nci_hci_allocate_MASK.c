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
struct nci_hci_dev {struct nci_dev* ndev; int /*<<< orphan*/  msg_rx_queue; int /*<<< orphan*/  msg_rx_work; int /*<<< orphan*/  rx_hcp_frags; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nci_hci_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_hci_msg_rx_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct nci_hci_dev *FUNC3(struct nci_dev *ndev)
{
	struct nci_hci_dev *hdev;

	hdev = FUNC1(sizeof(*hdev), GFP_KERNEL);
	if (!hdev)
		return NULL;

	FUNC2(&hdev->rx_hcp_frags);
	FUNC0(&hdev->msg_rx_work, nci_hci_msg_rx_work);
	FUNC2(&hdev->msg_rx_queue);
	hdev->ndev = ndev;

	return hdev;
}