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
typedef  void* u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_set_discoverable {int val; int /*<<< orphan*/  timeout; } ;
struct hci_dev {int discov_timeout; int /*<<< orphan*/  discoverable_update; int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  discov_off; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

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
 int /*<<< orphan*/  MGMT_STATUS_NOT_POWERED ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC11 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,void*) ; 
 int FUNC12 (int) ; 
 int FUNC13 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC18(struct sock *sk, struct hci_dev *hdev, void *data,
			    u16 len)
{
	struct mgmt_cp_set_discoverable *cp = data;
	struct mgmt_pending_cmd *cmd;
	u16 timeout;
	int err;

	FUNC0("request for %s", hdev->name);

	if (!FUNC7(hdev, HCI_LE_ENABLED) &&
	    !FUNC7(hdev, HCI_BREDR_ENABLED))
		return FUNC10(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
				       MGMT_STATUS_REJECTED);

	if (cp->val != 0x00 && cp->val != 0x01 && cp->val != 0x02)
		return FUNC10(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
				       MGMT_STATUS_INVALID_PARAMS);

	timeout = FUNC1(cp->timeout);

	/* Disabling discoverable requires that no timeout is set,
	 * and enabling limited discoverable requires a timeout.
	 */
	if ((cp->val == 0x00 && timeout > 0) ||
	    (cp->val == 0x02 && timeout == 0))
		return FUNC10(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC5(hdev);

	if (!FUNC9(hdev) && timeout > 0) {
		err = FUNC10(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
				      MGMT_STATUS_NOT_POWERED);
		goto failed;
	}

	if (FUNC14(MGMT_OP_SET_DISCOVERABLE, hdev) ||
	    FUNC14(MGMT_OP_SET_CONNECTABLE, hdev)) {
		err = FUNC10(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
				      MGMT_STATUS_BUSY);
		goto failed;
	}

	if (!FUNC7(hdev, HCI_CONNECTABLE)) {
		err = FUNC10(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
				      MGMT_STATUS_REJECTED);
		goto failed;
	}

	if (!FUNC9(hdev)) {
		bool changed = false;

		/* Setting limited discoverable when powered off is
		 * not a valid operation since it requires a timeout
		 * and so no need to check HCI_LIMITED_DISCOVERABLE.
		 */
		if (!!cp->val != FUNC7(hdev, HCI_DISCOVERABLE)) {
			FUNC3(hdev, HCI_DISCOVERABLE);
			changed = true;
		}

		err = FUNC17(sk, MGMT_OP_SET_DISCOVERABLE, hdev);
		if (err < 0)
			goto failed;

		if (changed)
			err = FUNC13(hdev, sk);

		goto failed;
	}

	/* If the current mode is the same, then just update the timeout
	 * value with the new value. And if only the timeout gets updated,
	 * then no need for any HCI transactions.
	 */
	if (!!cp->val == FUNC7(hdev, HCI_DISCOVERABLE) &&
	    (cp->val == 0x02) == FUNC7(hdev,
						   HCI_LIMITED_DISCOVERABLE)) {
		FUNC2(&hdev->discov_off);
		hdev->discov_timeout = timeout;

		if (cp->val && hdev->discov_timeout > 0) {
			int to = FUNC12(hdev->discov_timeout * 1000);
			FUNC15(hdev->req_workqueue,
					   &hdev->discov_off, to);
		}

		err = FUNC17(sk, MGMT_OP_SET_DISCOVERABLE, hdev);
		goto failed;
	}

	cmd = FUNC11(sk, MGMT_OP_SET_DISCOVERABLE, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	/* Cancel any potential discoverable timeout that might be
	 * still active and store new timeout value. The arming of
	 * the timeout happens in the complete handler.
	 */
	FUNC2(&hdev->discov_off);
	hdev->discov_timeout = timeout;

	if (cp->val)
		FUNC6(hdev, HCI_DISCOVERABLE);
	else
		FUNC4(hdev, HCI_DISCOVERABLE);

	/* Limited discoverable mode */
	if (cp->val == 0x02)
		FUNC6(hdev, HCI_LIMITED_DISCOVERABLE);
	else
		FUNC4(hdev, HCI_LIMITED_DISCOVERABLE);

	FUNC16(hdev->req_workqueue, &hdev->discoverable_update);
	err = 0;

failed:
	FUNC8(hdev);
	return err;
}