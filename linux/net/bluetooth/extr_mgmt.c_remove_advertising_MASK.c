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
struct mgmt_rp_remove_advertising {scalar_t__ instance; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_remove_advertising {scalar_t__ instance; } ;
struct hci_request {int /*<<< orphan*/  cmd_q; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  adv_instances; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  MGMT_OP_ADD_ADVERTISING ; 
 int /*<<< orphan*/  MGMT_OP_REMOVE_ADVERTISING ; 
 int /*<<< orphan*/  MGMT_OP_SET_LE ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct sock*,struct hci_request*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_request*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_request*) ; 
 int FUNC9 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_remove_advertising*,int) ; 
 int FUNC13 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC14 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mgmt_pending_cmd*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  remove_advertising_complete ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct sock *sk, struct hci_dev *hdev,
			      void *data, u16 data_len)
{
	struct mgmt_cp_remove_advertising *cp = data;
	struct mgmt_rp_remove_advertising rp;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	int err;

	FUNC0("%s", hdev->name);

	FUNC2(hdev);

	if (cp->instance && !FUNC5(hdev, cp->instance)) {
		err = FUNC13(sk, hdev->id,
				      MGMT_OP_REMOVE_ADVERTISING,
				      MGMT_STATUS_INVALID_PARAMS);
		goto unlock;
	}

	if (FUNC16(MGMT_OP_ADD_ADVERTISING, hdev) ||
	    FUNC16(MGMT_OP_REMOVE_ADVERTISING, hdev) ||
	    FUNC16(MGMT_OP_SET_LE, hdev)) {
		err = FUNC13(sk, hdev->id, MGMT_OP_REMOVE_ADVERTISING,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	if (FUNC11(&hdev->adv_instances)) {
		err = FUNC13(sk, hdev->id, MGMT_OP_REMOVE_ADVERTISING,
				      MGMT_STATUS_INVALID_PARAMS);
		goto unlock;
	}

	FUNC7(&req, hdev);

	FUNC6(hdev, sk, &req, cp->instance, true);

	if (FUNC11(&hdev->adv_instances))
		FUNC1(&req);

	/* If no HCI commands have been collected so far or the HCI_ADVERTISING
	 * flag is set or the device isn't powered then we have no HCI
	 * communication to make. Simply return.
	 */
	if (FUNC17(&req.cmd_q) ||
	    !FUNC10(hdev) ||
	    FUNC3(hdev, HCI_ADVERTISING)) {
		FUNC8(&req);
		rp.instance = cp->instance;
		err = FUNC12(sk, hdev->id,
					MGMT_OP_REMOVE_ADVERTISING,
					MGMT_STATUS_SUCCESS, &rp, sizeof(rp));
		goto unlock;
	}

	cmd = FUNC14(sk, MGMT_OP_REMOVE_ADVERTISING, hdev, data,
			       data_len);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	err = FUNC9(&req, remove_advertising_complete);
	if (err < 0)
		FUNC15(cmd);

unlock:
	FUNC4(hdev);

	return err;
}