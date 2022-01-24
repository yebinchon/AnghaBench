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
struct hci_ev_remote_features {int /*<<< orphan*/  status; int /*<<< orphan*/  handle; int /*<<< orphan*/  features; } ;
struct hci_dev {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  dst; int /*<<< orphan*/ * features; int /*<<< orphan*/  name; } ;
struct hci_cp_remote_name_req {int page; int pscan_rep_mode; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  handle; } ;
struct hci_cp_read_remote_ext_features {int page; int pscan_rep_mode; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  dst; int /*<<< orphan*/ * features; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_MGMT_CONNECTED ; 
 int /*<<< orphan*/  HCI_OP_READ_REMOTE_EXT_FEATURES ; 
 int /*<<< orphan*/  HCI_OP_REMOTE_NAME_REQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 struct hci_dev* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_remote_name_req*) ; 
 scalar_t__ FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_cp_remote_name_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct hci_dev *hdev,
				    struct sk_buff *skb)
{
	struct hci_ev_remote_features *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, ev->status);

	FUNC6(hdev);

	conn = FUNC4(hdev, FUNC1(ev->handle));
	if (!conn)
		goto unlock;

	if (!ev->status)
		FUNC11(conn->features[0], ev->features, 8);

	if (conn->state != BT_CONFIG)
		goto unlock;

	if (!ev->status && FUNC10(hdev) &&
	    FUNC10(conn)) {
		struct hci_cp_read_remote_ext_features cp;
		cp.handle = ev->handle;
		cp.page = 0x01;
		FUNC9(hdev, HCI_OP_READ_REMOTE_EXT_FEATURES,
			     sizeof(cp), &cp);
		goto unlock;
	}

	if (!ev->status && !FUNC15(HCI_CONN_MGMT_CONNECTED, &conn->flags)) {
		struct hci_cp_remote_name_req cp;
		FUNC12(&cp, 0, sizeof(cp));
		FUNC2(&cp.bdaddr, &conn->dst);
		cp.pscan_rep_mode = 0x02;
		FUNC9(hdev, HCI_OP_REMOTE_NAME_REQ, sizeof(cp), &cp);
	} else if (!FUNC14(HCI_CONN_MGMT_CONNECTED, &conn->flags))
		FUNC13(hdev, conn, 0, NULL, 0);

	if (!FUNC8(hdev, conn)) {
		conn->state = BT_CONNECTED;
		FUNC5(conn, ev->status);
		FUNC3(conn);
	}

unlock:
	FUNC7(hdev);
}