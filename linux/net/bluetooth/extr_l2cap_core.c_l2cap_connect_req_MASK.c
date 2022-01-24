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
typedef  int u16 ;
struct l2cap_conn_req {int dummy; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_cmd_hdr {int dummy; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  HCI_CONN_MGMT_CONNECTED ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  L2CAP_CONN_RSP ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 scalar_t__ FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct hci_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct l2cap_conn *conn,
			     struct l2cap_cmd_hdr *cmd, u16 cmd_len, u8 *data)
{
	struct hci_dev *hdev = conn->hcon->hdev;
	struct hci_conn *hcon = conn->hcon;

	if (cmd_len < sizeof(struct l2cap_conn_req))
		return -EPROTO;

	FUNC0(hdev);
	if (FUNC1(hdev, HCI_MGMT) &&
	    !FUNC5(HCI_CONN_MGMT_CONNECTED, &hcon->flags))
		FUNC4(hdev, hcon, 0, NULL, 0);
	FUNC2(hdev);

	FUNC3(conn, cmd, data, L2CAP_CONN_RSP, 0);
	return 0;
}