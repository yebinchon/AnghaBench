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
struct hci_cp_le_start_enc {int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_ERROR_AUTH_FAILURE ; 
 int /*<<< orphan*/  HCI_OP_LE_START_ENC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_cp_le_start_enc* FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hci_dev *hdev, u8 status)
{
	struct hci_cp_le_start_enc *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (!status)
		return;

	FUNC4(hdev);

	cp = FUNC7(hdev, HCI_OP_LE_START_ENC);
	if (!cp)
		goto unlock;

	conn = FUNC3(hdev, FUNC1(cp->handle));
	if (!conn)
		goto unlock;

	if (conn->state != BT_CONNECTED)
		goto unlock;

	FUNC6(conn, HCI_ERROR_AUTH_FAILURE);
	FUNC2(conn);

unlock:
	FUNC5(hdev);
}