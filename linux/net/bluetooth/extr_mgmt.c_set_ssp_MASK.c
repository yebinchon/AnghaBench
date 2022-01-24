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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_HS_ENABLED ; 
 int /*<<< orphan*/  HCI_OP_WRITE_SSP_DEBUG_MODE ; 
 int /*<<< orphan*/  HCI_OP_WRITE_SSP_MODE ; 
 int /*<<< orphan*/  HCI_SSP_ENABLED ; 
 int /*<<< orphan*/  HCI_USE_DEBUG_KEYS ; 
 int /*<<< orphan*/  MGMT_OP_SET_SSP ; 
 scalar_t__ MGMT_STATUS_BUSY ; 
 scalar_t__ MGMT_STATUS_INVALID_PARAMS ; 
 scalar_t__ MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct hci_dev*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 scalar_t__ FUNC10 (struct hci_dev*) ; 
 int FUNC11 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mgmt_pending_cmd* FUNC12 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mgmt_pending_cmd*) ; 
 int FUNC14 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int FUNC16 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC17(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
	struct mgmt_mode *cp = data;
	struct mgmt_pending_cmd *cmd;
	u8 status;
	int err;

	FUNC0("request for %s", hdev->name);

	status = FUNC10(hdev);
	if (status)
		return FUNC11(sk, hdev->id, MGMT_OP_SET_SSP, status);

	if (!FUNC9(hdev))
		return FUNC11(sk, hdev->id, MGMT_OP_SET_SSP,
				       MGMT_STATUS_NOT_SUPPORTED);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC11(sk, hdev->id, MGMT_OP_SET_SSP,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC2(hdev);

	if (!FUNC8(hdev)) {
		bool changed;

		if (cp->val) {
			changed = !FUNC4(hdev,
							     HCI_SSP_ENABLED);
		} else {
			changed = FUNC3(hdev,
							      HCI_SSP_ENABLED);
			if (!changed)
				changed = FUNC3(hdev,
								      HCI_HS_ENABLED);
			else
				FUNC1(hdev, HCI_HS_ENABLED);
		}

		err = FUNC16(sk, MGMT_OP_SET_SSP, hdev);
		if (err < 0)
			goto failed;

		if (changed)
			err = FUNC14(hdev, sk);

		goto failed;
	}

	if (FUNC15(MGMT_OP_SET_SSP, hdev)) {
		err = FUNC11(sk, hdev->id, MGMT_OP_SET_SSP,
				      MGMT_STATUS_BUSY);
		goto failed;
	}

	if (!!cp->val == FUNC5(hdev, HCI_SSP_ENABLED)) {
		err = FUNC16(sk, MGMT_OP_SET_SSP, hdev);
		goto failed;
	}

	cmd = FUNC12(sk, MGMT_OP_SET_SSP, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	if (!cp->val && FUNC5(hdev, HCI_USE_DEBUG_KEYS))
		FUNC7(hdev, HCI_OP_WRITE_SSP_DEBUG_MODE,
			     sizeof(cp->val), &cp->val);

	err = FUNC7(hdev, HCI_OP_WRITE_SSP_MODE, 1, &cp->val);
	if (err < 0) {
		FUNC13(cmd);
		goto failed;
	}

failed:
	FUNC6(hdev);
	return err;
}