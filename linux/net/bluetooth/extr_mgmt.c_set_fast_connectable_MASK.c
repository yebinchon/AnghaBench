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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_request {int dummy; } ;
struct hci_dev {scalar_t__ hci_ver; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BLUETOOTH_VER_1_2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_FAST_CONNECTABLE ; 
 int /*<<< orphan*/  MGMT_OP_SET_FAST_CONNECTABLE ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_FAILED ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int) ; 
 int /*<<< orphan*/  fast_connectable_complete ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_request*,struct hci_dev*) ; 
 int FUNC7 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC10 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int FUNC14 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC15(struct sock *sk, struct hci_dev *hdev,
				void *data, u16 len)
{
	struct mgmt_mode *cp = data;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC4(hdev, HCI_BREDR_ENABLED) ||
	    hdev->hci_ver < BLUETOOTH_VER_1_2)
		return FUNC9(sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
				       MGMT_STATUS_NOT_SUPPORTED);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC9(sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC3(hdev);

	if (FUNC13(MGMT_OP_SET_FAST_CONNECTABLE, hdev)) {
		err = FUNC9(sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	if (!!cp->val == FUNC4(hdev, HCI_FAST_CONNECTABLE)) {
		err = FUNC14(sk, MGMT_OP_SET_FAST_CONNECTABLE,
					hdev);
		goto unlock;
	}

	if (!FUNC8(hdev)) {
		FUNC2(hdev, HCI_FAST_CONNECTABLE);
		err = FUNC14(sk, MGMT_OP_SET_FAST_CONNECTABLE,
					hdev);
		FUNC12(hdev, sk);
		goto unlock;
	}

	cmd = FUNC10(sk, MGMT_OP_SET_FAST_CONNECTABLE, hdev,
			       data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	FUNC6(&req, hdev);

	FUNC1(&req, cp->val);

	err = FUNC7(&req, fast_connectable_complete);
	if (err < 0) {
		err = FUNC9(sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
				      MGMT_STATUS_FAILED);
		FUNC11(cmd);
	}

unlock:
	FUNC5(hdev);

	return err;
}