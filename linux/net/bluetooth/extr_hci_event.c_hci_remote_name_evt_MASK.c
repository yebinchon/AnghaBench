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
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_remote_name {scalar_t__ status; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/ * name; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_auth_requested {int /*<<< orphan*/  handle; } ;
struct hci_conn {int /*<<< orphan*/  handle; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_INITIATOR ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 int /*<<< orphan*/  HCI_MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_AUTH_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,struct hci_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_auth_requested*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_remote_name *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC3(hdev);

	FUNC5(hdev);

	conn = FUNC4(hdev, ACL_LINK, &ev->bdaddr);

	if (!FUNC6(hdev, HCI_MGMT))
		goto check_auth;

	if (ev->status == 0)
		FUNC2(hdev, conn, &ev->bdaddr, ev->name,
				       FUNC11(ev->name, HCI_MAX_NAME_LENGTH));
	else
		FUNC2(hdev, conn, &ev->bdaddr, NULL, 0);

check_auth:
	if (!conn)
		goto unlock;

	if (!FUNC8(hdev, conn))
		goto unlock;

	if (!FUNC12(HCI_CONN_AUTH_PEND, &conn->flags)) {
		struct hci_cp_auth_requested cp;

		FUNC10(HCI_CONN_AUTH_INITIATOR, &conn->flags);

		cp.handle = FUNC1(conn->handle);
		FUNC9(hdev, HCI_OP_AUTH_REQUESTED, sizeof(cp), &cp);
	}

unlock:
	FUNC7(hdev);
}