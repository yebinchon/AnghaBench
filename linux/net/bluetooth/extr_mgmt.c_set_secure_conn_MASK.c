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
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_OP_WRITE_SC_SUPPORT ; 
 int /*<<< orphan*/  HCI_SC_ENABLED ; 
 int /*<<< orphan*/  HCI_SC_ONLY ; 
 int /*<<< orphan*/  HCI_SSP_ENABLED ; 
 int /*<<< orphan*/  MGMT_OP_SET_SECURE_CONN ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_request*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_request*,struct hci_dev*) ; 
 int FUNC10 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 scalar_t__ FUNC12 (struct hci_dev*) ; 
 int FUNC13 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC14 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mgmt_pending_cmd*) ; 
 int FUNC16 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  sc_enable_complete ; 
 int FUNC18 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC19(struct sock *sk, struct hci_dev *hdev,
			   void *data, u16 len)
{
	struct mgmt_mode *cp = data;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	u8 val;
	int err;

	FUNC0("request for %s", hdev->name);

	if (!FUNC12(hdev) &&
	    !FUNC6(hdev, HCI_LE_ENABLED))
		return FUNC13(sk, hdev->id, MGMT_OP_SET_SECURE_CONN,
				       MGMT_STATUS_NOT_SUPPORTED);

	if (FUNC6(hdev, HCI_BREDR_ENABLED) &&
	    FUNC12(hdev) &&
	    !FUNC6(hdev, HCI_SSP_ENABLED))
		return FUNC13(sk, hdev->id, MGMT_OP_SET_SECURE_CONN,
				       MGMT_STATUS_REJECTED);

	if (cp->val != 0x00 && cp->val != 0x01 && cp->val != 0x02)
		return FUNC13(sk, hdev->id, MGMT_OP_SET_SECURE_CONN,
				  MGMT_STATUS_INVALID_PARAMS);

	FUNC2(hdev);

	if (!FUNC11(hdev) || !FUNC12(hdev) ||
	    !FUNC6(hdev, HCI_BREDR_ENABLED)) {
		bool changed;

		if (cp->val) {
			changed = !FUNC5(hdev,
							     HCI_SC_ENABLED);
			if (cp->val == 0x02)
				FUNC3(hdev, HCI_SC_ONLY);
			else
				FUNC1(hdev, HCI_SC_ONLY);
		} else {
			changed = FUNC4(hdev,
							      HCI_SC_ENABLED);
			FUNC1(hdev, HCI_SC_ONLY);
		}

		err = FUNC18(sk, MGMT_OP_SET_SECURE_CONN, hdev);
		if (err < 0)
			goto failed;

		if (changed)
			err = FUNC16(hdev, sk);

		goto failed;
	}

	if (FUNC17(MGMT_OP_SET_SECURE_CONN, hdev)) {
		err = FUNC13(sk, hdev->id, MGMT_OP_SET_SECURE_CONN,
				      MGMT_STATUS_BUSY);
		goto failed;
	}

	val = !!cp->val;

	if (val == FUNC6(hdev, HCI_SC_ENABLED) &&
	    (cp->val == 0x02) == FUNC6(hdev, HCI_SC_ONLY)) {
		err = FUNC18(sk, MGMT_OP_SET_SECURE_CONN, hdev);
		goto failed;
	}

	cmd = FUNC14(sk, MGMT_OP_SET_SECURE_CONN, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	FUNC9(&req, hdev);
	FUNC8(&req, HCI_OP_WRITE_SC_SUPPORT, 1, &val);
	err = FUNC10(&req, sc_enable_complete);
	if (err < 0) {
		FUNC15(cmd);
		goto failed;
	}

failed:
	FUNC7(hdev);
	return err;
}