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
struct link_key {int* val; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int key_type; int /*<<< orphan*/  dst; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EACCES ; 
 int HCI_AMP_LINK_KEY_SIZE ; 
 size_t HCI_LINK_KEY_SIZE ; 
 int HCI_LK_DEBUG_COMBINATION ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct link_key* FUNC3 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int*,int,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 

int FUNC6(struct hci_conn *conn, u8 *data, u8 *len, u8 *type)
{
	struct hci_dev *hdev = conn->hdev;
	struct link_key *key;
	u8 keybuf[HCI_AMP_LINK_KEY_SIZE];
	u8 gamp_key[HCI_AMP_LINK_KEY_SIZE];
	int err;

	if (!FUNC2(conn))
		return -EACCES;

	FUNC0("conn %p key_type %d", conn, conn->key_type);

	/* Legacy key */
	if (conn->key_type < 3) {
		FUNC1(hdev, "legacy key type %d", conn->key_type);
		return -EACCES;
	}

	*type = conn->key_type;
	*len = HCI_AMP_LINK_KEY_SIZE;

	key = FUNC3(hdev, &conn->dst);
	if (!key) {
		FUNC0("No Link key for conn %p dst %pMR", conn, &conn->dst);
		return -EACCES;
	}

	/* BR/EDR Link Key concatenated together with itself */
	FUNC5(&keybuf[0], key->val, HCI_LINK_KEY_SIZE);
	FUNC5(&keybuf[HCI_LINK_KEY_SIZE], key->val, HCI_LINK_KEY_SIZE);

	/* Derive Generic AMP Link Key (gamp) */
	err = FUNC4(keybuf, HCI_AMP_LINK_KEY_SIZE, "gamp", 4, gamp_key);
	if (err) {
		FUNC1(hdev, "could not derive Generic AMP Key: err %d", err);
		return err;
	}

	if (conn->key_type == HCI_LK_DEBUG_COMBINATION) {
		FUNC0("Use Generic AMP Key (gamp)");
		FUNC5(data, gamp_key, HCI_AMP_LINK_KEY_SIZE);
		return err;
	}

	/* Derive Dedicated AMP Link Key: "802b" is 802.11 PAL keyID */
	return FUNC4(gamp_key, HCI_AMP_LINK_KEY_SIZE, "802b", 4, data);
}