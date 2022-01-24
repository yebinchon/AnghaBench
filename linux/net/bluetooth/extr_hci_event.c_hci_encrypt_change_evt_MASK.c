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
struct hci_request {int dummy; } ;
struct hci_ev_encrypt_change {scalar_t__ status; int encrypt; int /*<<< orphan*/  handle; } ;
struct hci_dev {int* commands; int* le_features; int /*<<< orphan*/  auth_payload_timeout; int /*<<< orphan*/  name; } ;
struct hci_cp_write_auth_payload_to {void* timeout; void* handle; } ;
struct hci_cp_read_enc_key_size {void* handle; } ;
struct hci_conn {scalar_t__ key_type; scalar_t__ type; scalar_t__ state; int /*<<< orphan*/  hdev; int /*<<< orphan*/  handle; int /*<<< orphan*/  flags; void* enc_key_size; int /*<<< orphan*/  pending_sec_level; int /*<<< orphan*/  sec_level; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_CONN_AES_CCM ; 
 int /*<<< orphan*/  HCI_CONN_AUTH ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_FAILURE ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT_PEND ; 
 int /*<<< orphan*/  HCI_CONN_FIPS ; 
 scalar_t__ HCI_ERROR_AUTH_FAILURE ; 
 scalar_t__ HCI_ERROR_PIN_OR_KEY_MISSING ; 
 int HCI_LE_PING ; 
 void* HCI_LINK_KEY_SIZE ; 
 scalar_t__ HCI_LK_AUTH_COMBINATION_P256 ; 
 int /*<<< orphan*/  HCI_OP_READ_ENC_KEY_SIZE ; 
 int /*<<< orphan*/  HCI_OP_WRITE_AUTH_PAYLOAD_TO ; 
 int /*<<< orphan*/  HCI_RPA_EXPIRED ; 
 int /*<<< orphan*/  HCI_SC_ONLY ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 struct hci_conn* FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_conn*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_read_enc_key_size*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_request*,struct hci_dev*) ; 
 scalar_t__ FUNC17 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct hci_cp_write_auth_payload_to*) ; 
 scalar_t__ FUNC19 (struct hci_dev*) ; 
 int /*<<< orphan*/  read_enc_key_size_complete ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC22(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_encrypt_change *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, ev->status);

	FUNC9(hdev);

	conn = FUNC7(hdev, FUNC1(ev->handle));
	if (!conn)
		goto unlock;

	if (!ev->status) {
		if (ev->encrypt) {
			/* Encryption implies authentication */
			FUNC20(HCI_CONN_AUTH, &conn->flags);
			FUNC20(HCI_CONN_ENCRYPT, &conn->flags);
			conn->sec_level = conn->pending_sec_level;

			/* P-256 authentication key implies FIPS */
			if (conn->key_type == HCI_LK_AUTH_COMBINATION_P256)
				FUNC20(HCI_CONN_FIPS, &conn->flags);

			if ((conn->type == ACL_LINK && ev->encrypt == 0x02) ||
			    conn->type == LE_LINK)
				FUNC20(HCI_CONN_AES_CCM, &conn->flags);
		} else {
			FUNC3(HCI_CONN_ENCRYPT, &conn->flags);
			FUNC3(HCI_CONN_AES_CCM, &conn->flags);
		}
	}

	/* We should disregard the current RPA and generate a new one
	 * whenever the encryption procedure fails.
	 */
	if (ev->status && conn->type == LE_LINK) {
		FUNC10(hdev, HCI_RPA_EXPIRED);
		FUNC5(hdev, true);
	}

	FUNC3(HCI_CONN_ENCRYPT_PEND, &conn->flags);

	if (ev->status && conn->state == BT_CONNECTED) {
		if (ev->status == HCI_ERROR_PIN_OR_KEY_MISSING)
			FUNC20(HCI_CONN_AUTH_FAILURE, &conn->flags);

		FUNC13(conn, HCI_ERROR_AUTH_FAILURE);
		FUNC6(conn);
		goto unlock;
	}

	/* In Secure Connections Only mode, do not allow any connections
	 * that are not encrypted with AES-CCM using a P-256 authenticated
	 * combination key.
	 */
	if (FUNC11(hdev, HCI_SC_ONLY) &&
	    (!FUNC21(HCI_CONN_AES_CCM, &conn->flags) ||
	     conn->key_type != HCI_LK_AUTH_COMBINATION_P256)) {
		FUNC8(conn, HCI_ERROR_AUTH_FAILURE);
		FUNC6(conn);
		goto unlock;
	}

	/* Try reading the encryption key size for encrypted ACL links */
	if (!ev->status && ev->encrypt && conn->type == ACL_LINK) {
		struct hci_cp_read_enc_key_size cp;
		struct hci_request req;

		/* Only send HCI_Read_Encryption_Key_Size if the
		 * controller really supports it. If it doesn't, assume
		 * the default size (16).
		 */
		if (!(hdev->commands[20] & 0x10)) {
			conn->enc_key_size = HCI_LINK_KEY_SIZE;
			goto notify;
		}

		FUNC16(&req, hdev);

		cp.handle = FUNC4(conn->handle);
		FUNC15(&req, HCI_OP_READ_ENC_KEY_SIZE, sizeof(cp), &cp);

		if (FUNC17(&req, read_enc_key_size_complete)) {
			FUNC2(hdev, "sending read key size failed");
			conn->enc_key_size = HCI_LINK_KEY_SIZE;
			goto notify;
		}

		goto unlock;
	}

	/* Set the default Authenticated Payload Timeout after
	 * an LE Link is established. As per Core Spec v5.0, Vol 2, Part B
	 * Section 3.3, the HCI command WRITE_AUTH_PAYLOAD_TIMEOUT should be
	 * sent when the link is active and Encryption is enabled, the conn
	 * type can be either LE or ACL and controller must support LMP Ping.
	 * Ensure for AES-CCM encryption as well.
	 */
	if (FUNC21(HCI_CONN_ENCRYPT, &conn->flags) &&
	    FUNC21(HCI_CONN_AES_CCM, &conn->flags) &&
	    ((conn->type == ACL_LINK && FUNC19(hdev)) ||
	     (conn->type == LE_LINK && (hdev->le_features[0] & HCI_LE_PING)))) {
		struct hci_cp_write_auth_payload_to cp;

		cp.handle = FUNC4(conn->handle);
		cp.timeout = FUNC4(hdev->auth_payload_timeout);
		FUNC18(conn->hdev, HCI_OP_WRITE_AUTH_PAYLOAD_TO,
			     sizeof(cp), &cp);
	}

notify:
	if (conn->state == BT_CONFIG) {
		if (!ev->status)
			conn->state = BT_CONNECTED;

		FUNC8(conn, ev->status);
		FUNC6(conn);
	} else
		FUNC14(conn, ev->status, ev->encrypt);

unlock:
	FUNC12(hdev);
}