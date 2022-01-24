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
struct hci_ev_auth_complete {scalar_t__ status; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_set_conn_encrypt {int encrypt; int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  disc_timeout; int /*<<< orphan*/  pending_sec_level; int /*<<< orphan*/  sec_level; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_CONN_AUTH ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_FAILURE ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT_PEND ; 
 int /*<<< orphan*/  HCI_CONN_REAUTH_PEND ; 
 int /*<<< orphan*/  HCI_DISCONN_TIMEOUT ; 
 scalar_t__ HCI_ERROR_PIN_OR_KEY_MISSING ; 
 int /*<<< orphan*/  HCI_OP_SET_CONN_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 struct hci_conn* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*) ; 
 scalar_t__ FUNC8 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_conn*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_set_conn_encrypt*) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_auth_complete *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, ev->status);

	FUNC10(hdev);

	conn = FUNC6(hdev, FUNC1(ev->handle));
	if (!conn)
		goto unlock;

	if (!ev->status) {
		FUNC3(HCI_CONN_AUTH_FAILURE, &conn->flags);

		if (!FUNC8(conn) &&
		    FUNC16(HCI_CONN_REAUTH_PEND, &conn->flags)) {
			FUNC2(hdev, "re-auth of legacy device is not possible.");
		} else {
			FUNC15(HCI_CONN_AUTH, &conn->flags);
			conn->sec_level = conn->pending_sec_level;
		}
	} else {
		if (ev->status == HCI_ERROR_PIN_OR_KEY_MISSING)
			FUNC15(HCI_CONN_AUTH_FAILURE, &conn->flags);

		FUNC14(conn, ev->status);
	}

	FUNC3(HCI_CONN_AUTH_PEND, &conn->flags);
	FUNC3(HCI_CONN_REAUTH_PEND, &conn->flags);

	if (conn->state == BT_CONFIG) {
		if (!ev->status && FUNC8(conn)) {
			struct hci_cp_set_conn_encrypt cp;
			cp.handle  = ev->handle;
			cp.encrypt = 0x01;
			FUNC13(hdev, HCI_OP_SET_CONN_ENCRYPT, sizeof(cp),
				     &cp);
		} else {
			conn->state = BT_CONNECTED;
			FUNC9(conn, ev->status);
			FUNC5(conn);
		}
	} else {
		FUNC4(conn, ev->status);

		FUNC7(conn);
		conn->disc_timeout = HCI_DISCONN_TIMEOUT;
		FUNC5(conn);
	}

	if (FUNC16(HCI_CONN_ENCRYPT_PEND, &conn->flags)) {
		if (!ev->status) {
			struct hci_cp_set_conn_encrypt cp;
			cp.handle  = ev->handle;
			cp.encrypt = 0x01;
			FUNC13(hdev, HCI_OP_SET_CONN_ENCRYPT, sizeof(cp),
				     &cp);
		} else {
			FUNC3(HCI_CONN_ENCRYPT_PEND, &conn->flags);
			FUNC12(conn, ev->status, 0x00);
		}
	}

unlock:
	FUNC11(hdev);
}