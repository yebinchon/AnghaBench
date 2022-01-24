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
struct sk_buff {scalar_t__ data; } ;
struct link_key {scalar_t__ type; int /*<<< orphan*/  list; int /*<<< orphan*/  pin_len; } ;
struct hci_ev_link_key_notify {scalar_t__ key_type; int /*<<< orphan*/  link_key; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  flags; int /*<<< orphan*/  pin_length; int /*<<< orphan*/  disc_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_FLUSH_KEY ; 
 int /*<<< orphan*/  HCI_CONN_NEW_LINK_KEY ; 
 int /*<<< orphan*/  HCI_DISCONN_TIMEOUT ; 
 int /*<<< orphan*/  HCI_KEEP_DEBUG_KEYS ; 
 scalar_t__ HCI_LK_CHANGED_COMBINATION ; 
 scalar_t__ HCI_LK_DEBUG_COMBINATION ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct link_key* FUNC3 (struct hci_dev*,struct hci_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct link_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*,struct link_key*,int) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_link_key_notify *ev = (void *) skb->data;
	struct hci_conn *conn;
	struct link_key *key;
	bool persistent;
	u8 pin_len = 0;

	FUNC0("%s", hdev->name);

	FUNC7(hdev);

	conn = FUNC5(hdev, ACL_LINK, &ev->bdaddr);
	if (!conn)
		goto unlock;

	FUNC6(conn);
	conn->disc_timeout = HCI_DISCONN_TIMEOUT;
	FUNC4(conn);

	FUNC13(HCI_CONN_NEW_LINK_KEY, &conn->flags);
	FUNC2(conn, ev->key_type, conn->pin_length);

	if (!FUNC8(hdev, HCI_MGMT))
		goto unlock;

	key = FUNC3(hdev, conn, &ev->bdaddr, ev->link_key,
			        ev->key_type, pin_len, &persistent);
	if (!key)
		goto unlock;

	/* Update connection information since adding the key will have
	 * fixed up the type in the case of changed combination keys.
	 */
	if (ev->key_type == HCI_LK_CHANGED_COMBINATION)
		FUNC2(conn, key->type, key->pin_len);

	FUNC12(hdev, key, persistent);

	/* Keep debug keys around only if the HCI_KEEP_DEBUG_KEYS flag
	 * is set. If it's not set simply remove the key from the kernel
	 * list (we've still notified user space about it but with
	 * store_hint being 0).
	 */
	if (key->type == HCI_LK_DEBUG_COMBINATION &&
	    !FUNC8(hdev, HCI_KEEP_DEBUG_KEYS)) {
		FUNC11(&key->list);
		FUNC10(key, rcu);
		goto unlock;
	}

	if (persistent)
		FUNC1(HCI_CONN_FLUSH_KEY, &conn->flags);
	else
		FUNC13(HCI_CONN_FLUSH_KEY, &conn->flags);

unlock:
	FUNC9(hdev);
}