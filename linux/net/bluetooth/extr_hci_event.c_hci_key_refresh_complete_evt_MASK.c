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
struct hci_ev_key_refresh_complete {scalar_t__ status; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ type; scalar_t__ state; int /*<<< orphan*/  disc_timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/  pending_sec_level; int /*<<< orphan*/  sec_level; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT_PEND ; 
 int /*<<< orphan*/  HCI_DISCONN_TIMEOUT ; 
 int /*<<< orphan*/  HCI_ERROR_AUTH_FAILURE ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_conn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev,
					 struct sk_buff *skb)
{
	struct hci_ev_key_refresh_complete *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x handle 0x%4.4x", hdev->name, ev->status,
	       FUNC1(ev->handle));

	FUNC8(hdev);

	conn = FUNC5(hdev, FUNC1(ev->handle));
	if (!conn)
		goto unlock;

	/* For BR/EDR the necessary steps are taken through the
	 * auth_complete event.
	 */
	if (conn->type != LE_LINK)
		goto unlock;

	if (!ev->status)
		conn->sec_level = conn->pending_sec_level;

	FUNC2(HCI_CONN_ENCRYPT_PEND, &conn->flags);

	if (ev->status && conn->state == BT_CONNECTED) {
		FUNC10(conn, HCI_ERROR_AUTH_FAILURE);
		FUNC4(conn);
		goto unlock;
	}

	if (conn->state == BT_CONFIG) {
		if (!ev->status)
			conn->state = BT_CONNECTED;

		FUNC7(conn, ev->status);
		FUNC4(conn);
	} else {
		FUNC3(conn, ev->status);

		FUNC6(conn);
		conn->disc_timeout = HCI_DISCONN_TIMEOUT;
		FUNC4(conn);
	}

unlock:
	FUNC9(hdev);
}