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
struct hci_dev {scalar_t__ le_scan_type; int cur_adv_instance; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  HCI_ADVERTISING_CONNECTABLE ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  LE_LINK ; 
 scalar_t__ LE_SCAN_ACTIVE ; 
 int /*<<< orphan*/  MGMT_OP_SET_ADVERTISING ; 
 int /*<<< orphan*/  MGMT_OP_SET_LE ; 
 int MGMT_STATUS_BUSY ; 
 int MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 scalar_t__ FUNC7 (struct hci_dev*) ; 
 scalar_t__ FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_request*,struct hci_dev*) ; 
 int FUNC17 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct hci_dev*) ; 
 int FUNC19 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct hci_dev*) ; 
 struct mgmt_pending_cmd* FUNC21 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct mgmt_pending_cmd*) ; 
 int FUNC23 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int FUNC25 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  set_advertising_complete ; 

__attribute__((used)) static int FUNC26(struct sock *sk, struct hci_dev *hdev, void *data,
			   u16 len)
{
	struct mgmt_mode *cp = data;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	u8 val, status;
	int err;

	FUNC0("request for %s", hdev->name);

	status = FUNC20(hdev);
	if (status)
		return FUNC19(sk, hdev->id, MGMT_OP_SET_ADVERTISING,
				       status);

	if (cp->val != 0x00 && cp->val != 0x01 && cp->val != 0x02)
		return FUNC19(sk, hdev->id, MGMT_OP_SET_ADVERTISING,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC10(hdev);

	val = !!cp->val;

	/* The following conditions are ones which mean that we should
	 * not do any HCI communication but directly send a mgmt
	 * response to user space (after toggling the flag if
	 * necessary).
	 */
	if (!FUNC18(hdev) ||
	    (val == FUNC14(hdev, HCI_ADVERTISING) &&
	     (cp->val == 0x02) == FUNC14(hdev, HCI_ADVERTISING_CONNECTABLE)) ||
	    FUNC8(hdev, LE_LINK) > 0 ||
	    (FUNC14(hdev, HCI_LE_SCAN) &&
	     hdev->le_scan_type == LE_SCAN_ACTIVE)) {
		bool changed;

		if (cp->val) {
			hdev->cur_adv_instance = 0x00;
			changed = !FUNC13(hdev, HCI_ADVERTISING);
			if (cp->val == 0x02)
				FUNC11(hdev, HCI_ADVERTISING_CONNECTABLE);
			else
				FUNC9(hdev, HCI_ADVERTISING_CONNECTABLE);
		} else {
			changed = FUNC12(hdev, HCI_ADVERTISING);
			FUNC9(hdev, HCI_ADVERTISING_CONNECTABLE);
		}

		err = FUNC25(sk, MGMT_OP_SET_ADVERTISING, hdev);
		if (err < 0)
			goto unlock;

		if (changed)
			err = FUNC23(hdev, sk);

		goto unlock;
	}

	if (FUNC24(MGMT_OP_SET_ADVERTISING, hdev) ||
	    FUNC24(MGMT_OP_SET_LE, hdev)) {
		err = FUNC19(sk, hdev->id, MGMT_OP_SET_ADVERTISING,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	cmd = FUNC21(sk, MGMT_OP_SET_ADVERTISING, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	FUNC16(&req, hdev);

	if (cp->val == 0x02)
		FUNC11(hdev, HCI_ADVERTISING_CONNECTABLE);
	else
		FUNC9(hdev, HCI_ADVERTISING_CONNECTABLE);

	FUNC6(hdev);

	if (val) {
		/* Switch to instance "0" for the Set Advertising setting.
		 * We cannot use update_[adv|scan_rsp]_data() here as the
		 * HCI_ADVERTISING flag is not yet set.
		 */
		hdev->cur_adv_instance = 0x00;

		if (FUNC7(hdev)) {
			FUNC3(&req, 0x00);
		} else {
			FUNC4(&req, 0x00);
			FUNC5(&req, 0x00);
			FUNC2(&req);
		}
	} else {
		FUNC1(&req);
	}

	err = FUNC17(&req, set_advertising_complete);
	if (err < 0)
		FUNC22(cmd);

unlock:
	FUNC15(hdev);
	return err;
}