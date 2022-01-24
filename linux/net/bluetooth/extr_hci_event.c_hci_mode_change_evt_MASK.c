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
struct hci_ev_mode_change {scalar_t__ mode; int /*<<< orphan*/  status; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ mode; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HCI_CM_ACTIVE ; 
 int /*<<< orphan*/  HCI_CONN_MODE_CHANGE_PEND ; 
 int /*<<< orphan*/  HCI_CONN_POWER_SAVE ; 
 int /*<<< orphan*/  HCI_CONN_SCO_SETUP_PEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_mode_change *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, ev->status);

	FUNC4(hdev);

	conn = FUNC3(hdev, FUNC1(ev->handle));
	if (conn) {
		conn->mode = ev->mode;

		if (!FUNC8(HCI_CONN_MODE_CHANGE_PEND,
					&conn->flags)) {
			if (conn->mode == HCI_CM_ACTIVE)
				FUNC7(HCI_CONN_POWER_SAVE, &conn->flags);
			else
				FUNC2(HCI_CONN_POWER_SAVE, &conn->flags);
		}

		if (FUNC8(HCI_CONN_SCO_SETUP_PEND, &conn->flags))
			FUNC6(conn, ev->status);
	}

	FUNC5(hdev);
}