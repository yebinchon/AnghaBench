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
struct hci_cp_remote_name_req {int /*<<< orphan*/  bdaddr; } ;
struct hci_cp_auth_requested {int /*<<< orphan*/  handle; } ;
struct hci_conn {int /*<<< orphan*/  handle; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  auth_cp ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_INITIATOR ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_AUTH_REQUESTED ; 
 int /*<<< orphan*/  HCI_OP_REMOTE_NAME_REQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,struct hci_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_auth_requested*) ; 
 struct hci_cp_remote_name_req* FUNC9 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct hci_dev *hdev, __u8 status)
{
	struct hci_cp_remote_name_req *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	/* If successful wait for the name req complete event before
	 * checking for the need to do authentication */
	if (!status)
		return;

	cp = FUNC9(hdev, HCI_OP_REMOTE_NAME_REQ);
	if (!cp)
		return;

	FUNC4(hdev);

	conn = FUNC3(hdev, ACL_LINK, &cp->bdaddr);

	if (FUNC5(hdev, HCI_MGMT))
		FUNC2(hdev, conn, &cp->bdaddr, NULL, 0);

	if (!conn)
		goto unlock;

	if (!FUNC7(hdev, conn))
		goto unlock;

	if (!FUNC11(HCI_CONN_AUTH_PEND, &conn->flags)) {
		struct hci_cp_auth_requested auth_cp;

		FUNC10(HCI_CONN_AUTH_INITIATOR, &conn->flags);

		auth_cp.handle = FUNC1(conn->handle);
		FUNC8(hdev, HCI_OP_AUTH_REQUESTED,
			     sizeof(auth_cp), &auth_cp);
	}

unlock:
	FUNC6(hdev);
}