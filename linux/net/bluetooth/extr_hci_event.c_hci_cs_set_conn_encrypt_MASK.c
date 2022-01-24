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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_set_conn_encrypt {int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_SET_CONN_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 struct hci_cp_set_conn_encrypt* FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hci_dev *hdev, __u8 status)
{
	struct hci_cp_set_conn_encrypt *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (!status)
		return;

	cp = FUNC7(hdev, HCI_OP_SET_CONN_ENCRYPT);
	if (!cp)
		return;

	FUNC5(hdev);

	conn = FUNC3(hdev, FUNC1(cp->handle));
	if (conn) {
		if (conn->state == BT_CONFIG) {
			FUNC4(conn, status);
			FUNC2(conn);
		}
	}

	FUNC6(hdev);
}