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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_create_phy_link {int /*<<< orphan*/  phy_handle; } ;
struct hci_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_CREATE_PHY_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct hci_cp_create_phy_link* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hci_dev *hdev, u8 status,
				    u16 opcode)
{
	struct hci_cp_create_phy_link *cp;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	cp = FUNC6(hdev, HCI_OP_CREATE_PHY_LINK);
	if (!cp)
		return;

	FUNC4(hdev);

	if (status) {
		struct hci_conn *hcon;

		hcon = FUNC3(hdev, cp->phy_handle);
		if (hcon)
			FUNC2(hcon);
	} else {
		FUNC1(hdev, cp->phy_handle);
	}

	FUNC5(hdev);
}