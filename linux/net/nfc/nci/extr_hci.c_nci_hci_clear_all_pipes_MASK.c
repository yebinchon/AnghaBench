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
struct nci_dev {int /*<<< orphan*/  hci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_HCI_ADMIN_GATE ; 
 int /*<<< orphan*/  NCI_HCI_ADM_CLEAR_ALL_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct nci_dev *ndev)
{
	int r;

	r = FUNC1(ndev, NCI_HCI_ADMIN_GATE,
			     NCI_HCI_ADM_CLEAR_ALL_PIPE, NULL, 0, NULL);
	if (r < 0)
		return r;

	FUNC0(ndev->hci_dev);
	return r;
}