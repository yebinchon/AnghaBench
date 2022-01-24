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
struct hci_request {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_OOB_DATA ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_OOB_EXT_DATA ; 
 int /*<<< orphan*/  MGMT_OP_READ_LOCAL_OOB_DATA ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_POWERED ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 scalar_t__ FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*,struct hci_dev*) ; 
 int FUNC6 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC10 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mgmt_pending_cmd*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  read_local_oob_data_complete ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct hci_dev *hdev,
			       void *data, u16 data_len)
{
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	int err;

	FUNC0("%s", hdev->name);

	FUNC2(hdev);

	if (!FUNC7(hdev)) {
		err = FUNC9(sk, hdev->id, MGMT_OP_READ_LOCAL_OOB_DATA,
				      MGMT_STATUS_NOT_POWERED);
		goto unlock;
	}

	if (!FUNC8(hdev)) {
		err = FUNC9(sk, hdev->id, MGMT_OP_READ_LOCAL_OOB_DATA,
				      MGMT_STATUS_NOT_SUPPORTED);
		goto unlock;
	}

	if (FUNC12(MGMT_OP_READ_LOCAL_OOB_DATA, hdev)) {
		err = FUNC9(sk, hdev->id, MGMT_OP_READ_LOCAL_OOB_DATA,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	cmd = FUNC10(sk, MGMT_OP_READ_LOCAL_OOB_DATA, hdev, NULL, 0);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	FUNC5(&req, hdev);

	if (FUNC1(hdev))
		FUNC4(&req, HCI_OP_READ_LOCAL_OOB_EXT_DATA, 0, NULL);
	else
		FUNC4(&req, HCI_OP_READ_LOCAL_OOB_DATA, 0, NULL);

	err = FUNC6(&req, read_local_oob_data_complete);
	if (err < 0)
		FUNC11(cmd);

unlock:
	FUNC3(hdev);
	return err;
}