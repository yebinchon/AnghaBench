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
struct hci_cp_write_le_host_supported {int le; int simul; } ;
typedef  int /*<<< orphan*/  hci_cp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_OP_WRITE_LE_HOST_SUPPORTED ; 
 int /*<<< orphan*/  MGMT_OP_SET_ADVERTISING ; 
 int /*<<< orphan*/  MGMT_OP_SET_LE ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*) ; 
 scalar_t__ FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_write_le_host_supported*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_request*,struct hci_dev*) ; 
 int FUNC12 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*) ; 
 int /*<<< orphan*/  le_enable_complete ; 
 int FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_cp_write_le_host_supported*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC18 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct mgmt_pending_cmd*) ; 
 int FUNC20 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int FUNC22 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC23(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
	struct mgmt_mode *cp = data;
	struct hci_cp_write_le_host_supported hci_cp;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	int err;
	u8 val, enabled;

	FUNC0("request for %s", hdev->name);

	if (!FUNC15(hdev))
		return FUNC17(sk, hdev->id, MGMT_OP_SET_LE,
				       MGMT_STATUS_NOT_SUPPORTED);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC17(sk, hdev->id, MGMT_OP_SET_LE,
				       MGMT_STATUS_INVALID_PARAMS);

	/* Bluetooth single mode LE only controllers or dual-mode
	 * controllers configured as LE only devices, do not allow
	 * switching LE off. These have either LE enabled explicitly
	 * or BR/EDR has been previously switched off.
	 *
	 * When trying to enable an already enabled LE, then gracefully
	 * send a positive response. Trying to disable it however will
	 * result into rejection.
	 */
	if (!FUNC7(hdev, HCI_BREDR_ENABLED)) {
		if (cp->val == 0x01)
			return FUNC22(sk, MGMT_OP_SET_LE, hdev);

		return FUNC17(sk, hdev->id, MGMT_OP_SET_LE,
				       MGMT_STATUS_REJECTED);
	}

	FUNC6(hdev);

	val = !!cp->val;
	enabled = FUNC14(hdev);

	if (!val)
		FUNC10(hdev, NULL, NULL, 0x00, true);

	if (!FUNC13(hdev) || val == enabled) {
		bool changed = false;

		if (val != FUNC7(hdev, HCI_LE_ENABLED)) {
			FUNC4(hdev, HCI_LE_ENABLED);
			changed = true;
		}

		if (!val && FUNC7(hdev, HCI_ADVERTISING)) {
			FUNC5(hdev, HCI_ADVERTISING);
			changed = true;
		}

		err = FUNC22(sk, MGMT_OP_SET_LE, hdev);
		if (err < 0)
			goto unlock;

		if (changed)
			err = FUNC20(hdev, sk);

		goto unlock;
	}

	if (FUNC21(MGMT_OP_SET_LE, hdev) ||
	    FUNC21(MGMT_OP_SET_ADVERTISING, hdev)) {
		err = FUNC17(sk, hdev->id, MGMT_OP_SET_LE,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	cmd = FUNC18(sk, MGMT_OP_SET_LE, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	FUNC11(&req, hdev);

	FUNC16(&hci_cp, 0, sizeof(hci_cp));

	if (val) {
		hci_cp.le = val;
		hci_cp.simul = 0x00;
	} else {
		if (FUNC7(hdev, HCI_LE_ADV))
			FUNC2(&req);

		if (FUNC3(hdev))
			FUNC1(&req);
	}

	FUNC9(&req, HCI_OP_WRITE_LE_HOST_SUPPORTED, sizeof(hci_cp),
		    &hci_cp);

	err = FUNC12(&req, le_enable_complete);
	if (err < 0)
		FUNC19(cmd);

unlock:
	FUNC8(hdev);
	return err;
}