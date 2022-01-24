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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_enc_key_size {int /*<<< orphan*/  key_size; scalar_t__ status; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  enc_key_size; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HCI_CONN_AES_CCM ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT ; 
 int /*<<< orphan*/  HCI_LINK_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hci_dev *hdev, u8 status,
				       u16 opcode, struct sk_buff *skb)
{
	const struct hci_rp_read_enc_key_size *rp;
	struct hci_conn *conn;
	u16 handle;

	FUNC0("%s status 0x%02x", hdev->name, status);

	if (!skb || skb->len < sizeof(*rp)) {
		FUNC1(hdev, "invalid read key size response");
		return;
	}

	rp = (void *)skb->data;
	handle = FUNC8(rp->handle);

	FUNC5(hdev);

	conn = FUNC3(hdev, handle);
	if (!conn)
		goto unlock;

	/* If we fail to read the encryption key size, assume maximum
	 * (which is the same we do also when this HCI command isn't
	 * supported.
	 */
	if (rp->status) {
		FUNC1(hdev, "failed to read key size for handle %u",
			   handle);
		conn->enc_key_size = HCI_LINK_KEY_SIZE;
	} else {
		conn->enc_key_size = rp->key_size;
	}

	if (conn->state == BT_CONFIG) {
		conn->state = BT_CONNECTED;
		FUNC4(conn, 0);
		FUNC2(conn);
	} else {
		u8 encrypt;

		if (!FUNC9(HCI_CONN_ENCRYPT, &conn->flags))
			encrypt = 0x00;
		else if (FUNC9(HCI_CONN_AES_CCM, &conn->flags))
			encrypt = 0x02;
		else
			encrypt = 0x01;

		FUNC7(conn, 0, encrypt);
	}

unlock:
	FUNC6(hdev);
}