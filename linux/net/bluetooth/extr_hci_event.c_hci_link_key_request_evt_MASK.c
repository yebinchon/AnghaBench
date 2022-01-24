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
struct link_key {int pin_len; int /*<<< orphan*/  val; int /*<<< orphan*/  type; } ;
struct hci_cp_link_key_reply {int /*<<< orphan*/  link_key; int /*<<< orphan*/  bdaddr; } ;
struct hci_ev_link_key_req {struct hci_cp_link_key_reply bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int auth_type; scalar_t__ pending_sec_level; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ BT_SECURITY_FIPS ; 
 scalar_t__ BT_SECURITY_HIGH ; 
 int /*<<< orphan*/  HCI_CONN_NEW_LINK_KEY ; 
 int /*<<< orphan*/  HCI_LINK_KEY_SIZE ; 
 int /*<<< orphan*/  HCI_LK_COMBINATION ; 
 int /*<<< orphan*/  HCI_LK_UNAUTH_COMBINATION_P192 ; 
 int /*<<< orphan*/  HCI_LK_UNAUTH_COMBINATION_P256 ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_LINK_KEY_NEG_REPLY ; 
 int /*<<< orphan*/  HCI_OP_LINK_KEY_REPLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hci_cp_link_key_reply*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*,int /*<<< orphan*/ ,int) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ,struct hci_cp_link_key_reply*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 struct link_key* FUNC8 (struct hci_dev*,struct hci_cp_link_key_reply*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_link_key_reply*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_link_key_req *ev = (void *) skb->data;
	struct hci_cp_link_key_reply cp;
	struct hci_conn *conn;
	struct link_key *key;

	FUNC0("%s", hdev->name);

	if (!FUNC6(hdev, HCI_MGMT))
		return;

	FUNC5(hdev);

	key = FUNC8(hdev, &ev->bdaddr);
	if (!key) {
		FUNC0("%s link key not found for %pMR", hdev->name,
		       &ev->bdaddr);
		goto not_found;
	}

	FUNC0("%s found key type %u for %pMR", hdev->name, key->type,
	       &ev->bdaddr);

	conn = FUNC4(hdev, ACL_LINK, &ev->bdaddr);
	if (conn) {
		FUNC2(HCI_CONN_NEW_LINK_KEY, &conn->flags);

		if ((key->type == HCI_LK_UNAUTH_COMBINATION_P192 ||
		     key->type == HCI_LK_UNAUTH_COMBINATION_P256) &&
		    conn->auth_type != 0xff && (conn->auth_type & 0x01)) {
			FUNC0("%s ignoring unauthenticated key", hdev->name);
			goto not_found;
		}

		if (key->type == HCI_LK_COMBINATION && key->pin_len < 16 &&
		    (conn->pending_sec_level == BT_SECURITY_HIGH ||
		     conn->pending_sec_level == BT_SECURITY_FIPS)) {
			FUNC0("%s ignoring key unauthenticated for high security",
			       hdev->name);
			goto not_found;
		}

		FUNC3(conn, key->type, key->pin_len);
	}

	FUNC1(&cp.bdaddr, &ev->bdaddr);
	FUNC10(cp.link_key, key->val, HCI_LINK_KEY_SIZE);

	FUNC9(hdev, HCI_OP_LINK_KEY_REPLY, sizeof(cp), &cp);

	FUNC7(hdev);

	return;

not_found:
	FUNC9(hdev, HCI_OP_LINK_KEY_NEG_REPLY, 6, &ev->bdaddr);
	FUNC7(hdev);
}