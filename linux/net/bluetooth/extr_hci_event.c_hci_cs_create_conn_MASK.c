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
struct hci_cp_create_conn {int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {scalar_t__ state; int attempt; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  HCI_OP_CREATE_CONN ; 
 int /*<<< orphan*/  HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 struct hci_cp_create_conn* FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct hci_dev *hdev, __u8 status)
{
	struct hci_cp_create_conn *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	cp = FUNC8(hdev, HCI_OP_CREATE_CONN);
	if (!cp)
		return;

	FUNC6(hdev);

	conn = FUNC4(hdev, ACL_LINK, &cp->bdaddr);

	FUNC0("%s bdaddr %pMR hcon %p", hdev->name, cp->bdaddr, conn);

	if (status) {
		if (conn && conn->state == BT_CONNECT) {
			if (status != 0x0c || conn->attempt > 2) {
				conn->state = BT_CLOSED;
				FUNC5(conn, status);
				FUNC3(conn);
			} else
				conn->state = BT_CONNECT2;
		}
	} else {
		if (!conn) {
			conn = FUNC2(hdev, ACL_LINK, &cp->bdaddr,
					    HCI_ROLE_MASTER);
			if (!conn)
				FUNC1(hdev, "no memory for new connection");
		}
	}

	FUNC7(hdev);
}