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
typedef  int u8 ;
struct link_key {int type; int pin_len; int /*<<< orphan*/  val; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  list; } ;
struct hci_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  link_keys; } ;
struct hci_conn {int key_type; int remote_auth; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_LINK_KEY_SIZE ; 
 int HCI_LK_CHANGED_COMBINATION ; 
 int HCI_LK_COMBINATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct link_key* FUNC2 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hci_dev*,struct hci_conn*,int,int) ; 
 struct link_key* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

struct link_key *FUNC7(struct hci_dev *hdev, struct hci_conn *conn,
				  bdaddr_t *bdaddr, u8 *val, u8 type,
				  u8 pin_len, bool *persistent)
{
	struct link_key *key, *old_key;
	u8 old_key_type;

	old_key = FUNC2(hdev, bdaddr);
	if (old_key) {
		old_key_type = old_key->type;
		key = old_key;
	} else {
		old_key_type = conn ? conn->key_type : 0xff;
		key = FUNC4(sizeof(*key), GFP_KERNEL);
		if (!key)
			return NULL;
		FUNC5(&key->list, &hdev->link_keys);
	}

	FUNC0("%s key for %pMR type %u", hdev->name, bdaddr, type);

	/* Some buggy controller combinations generate a changed
	 * combination key for legacy pairing even when there's no
	 * previous key */
	if (type == HCI_LK_CHANGED_COMBINATION &&
	    (!conn || conn->remote_auth == 0xff) && old_key_type == 0xff) {
		type = HCI_LK_COMBINATION;
		if (conn)
			conn->key_type = type;
	}

	FUNC1(&key->bdaddr, bdaddr);
	FUNC6(key->val, val, HCI_LINK_KEY_SIZE);
	key->pin_len = pin_len;

	if (type == HCI_LK_CHANGED_COMBINATION)
		key->type = old_key_type;
	else
		key->type = type;

	if (persistent)
		*persistent = FUNC3(hdev, conn, type,
						 old_key_type);

	return key;
}