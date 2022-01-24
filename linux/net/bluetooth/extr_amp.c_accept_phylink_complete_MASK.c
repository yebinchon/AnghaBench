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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_accept_phy_link {int /*<<< orphan*/  phy_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_OP_ACCEPT_PHY_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct hci_cp_accept_phy_link* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hci_dev *hdev, u8 status,
				    u16 opcode)
{
	struct hci_cp_accept_phy_link *cp;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (status)
		return;

	cp = FUNC2(hdev, HCI_OP_ACCEPT_PHY_LINK);
	if (!cp)
		return;

	FUNC1(hdev, cp->phy_handle);
}