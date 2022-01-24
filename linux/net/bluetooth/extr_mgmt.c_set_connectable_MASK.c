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
struct hci_dev {scalar_t__ discov_timeout; int /*<<< orphan*/  connectable_update; int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  discov_off; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_CONNECTABLE ; 
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_LIMITED_DISCOVERABLE ; 
 int /*<<< orphan*/  MGMT_OP_SET_CONNECTABLE ; 
 int /*<<< orphan*/  MGMT_OP_SET_DISCOVERABLE ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC9 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct hci_dev*,struct sock*,int) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct hci_dev *hdev, void *data,
			   u16 len)
{
	struct mgmt_mode *cp = data;
	struct mgmt_pending_cmd *cmd;
	int err;

	FUNC0("request for %s", hdev->name);

	if (!FUNC5(hdev, HCI_LE_ENABLED) &&
	    !FUNC5(hdev, HCI_BREDR_ENABLED))
		return FUNC8(sk, hdev->id, MGMT_OP_SET_CONNECTABLE,
				       MGMT_STATUS_REJECTED);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC8(sk, hdev->id, MGMT_OP_SET_CONNECTABLE,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC3(hdev);

	if (!FUNC7(hdev)) {
		err = FUNC12(hdev, sk, cp->val);
		goto failed;
	}

	if (FUNC10(MGMT_OP_SET_DISCOVERABLE, hdev) ||
	    FUNC10(MGMT_OP_SET_CONNECTABLE, hdev)) {
		err = FUNC8(sk, hdev->id, MGMT_OP_SET_CONNECTABLE,
				      MGMT_STATUS_BUSY);
		goto failed;
	}

	cmd = FUNC9(sk, MGMT_OP_SET_CONNECTABLE, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	if (cp->val) {
		FUNC4(hdev, HCI_CONNECTABLE);
	} else {
		if (hdev->discov_timeout > 0)
			FUNC1(&hdev->discov_off);

		FUNC2(hdev, HCI_LIMITED_DISCOVERABLE);
		FUNC2(hdev, HCI_DISCOVERABLE);
		FUNC2(hdev, HCI_CONNECTABLE);
	}

	FUNC11(hdev->req_workqueue, &hdev->connectable_update);
	err = 0;

failed:
	FUNC6(hdev);
	return err;
}