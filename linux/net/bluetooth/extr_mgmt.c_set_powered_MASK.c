#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct hci_dev {TYPE_1__ power_off; int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  power_on; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_POWER_OFF_TIMEOUT ; 
 int /*<<< orphan*/  MGMT_OP_SET_POWERED ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC7 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, struct hci_dev *hdev, void *data,
		       u16 len)
{
	struct mgmt_mode *cp = data;
	struct mgmt_pending_cmd *cmd;
	int err;

	FUNC0("request for %s", hdev->name);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC6(sk, hdev->id, MGMT_OP_SET_POWERED,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC3(hdev);

	if (FUNC8(MGMT_OP_SET_POWERED, hdev)) {
		err = FUNC6(sk, hdev->id, MGMT_OP_SET_POWERED,
				      MGMT_STATUS_BUSY);
		goto failed;
	}

	if (!!cp->val == FUNC5(hdev)) {
		err = FUNC11(sk, MGMT_OP_SET_POWERED, hdev);
		goto failed;
	}

	cmd = FUNC7(sk, MGMT_OP_SET_POWERED, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	if (cp->val) {
		FUNC10(hdev->req_workqueue, &hdev->power_on);
		err = 0;
	} else {
		/* Disconnect connections, stop scans, etc */
		err = FUNC2(hdev);
		if (!err)
			FUNC9(hdev->req_workqueue, &hdev->power_off,
					   HCI_POWER_OFF_TIMEOUT);

		/* ENODATA means there were no HCI commands queued */
		if (err == -ENODATA) {
			FUNC1(&hdev->power_off);
			FUNC10(hdev->req_workqueue, &hdev->power_off.work);
			err = 0;
		}
	}

failed:
	FUNC4(hdev);
	return err;
}