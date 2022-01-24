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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_le_create_conn {int /*<<< orphan*/  filter_policy; int /*<<< orphan*/  own_address_type; int /*<<< orphan*/  peer_addr_type; int /*<<< orphan*/  peer_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_LE_CREATE_CONN ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 struct hci_cp_le_create_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev, u8 status)
{
	struct hci_cp_le_create_conn *cp;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	/* All connection failure handling is taken care of by the
	 * hci_le_conn_failed function which is triggered by the HCI
	 * request completion callbacks used for connecting.
	 */
	if (status)
		return;

	cp = FUNC4(hdev, HCI_OP_LE_CREATE_CONN);
	if (!cp)
		return;

	FUNC2(hdev);

	FUNC1(hdev, &cp->peer_addr, cp->peer_addr_type,
			  cp->own_address_type, cp->filter_policy);

	FUNC3(hdev);
}