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
struct hci_dev {int /*<<< orphan*/  cur_adv_instance; int /*<<< orphan*/  id; int /*<<< orphan*/  static_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_FAST_CONNECTABLE ; 
 int /*<<< orphan*/  HCI_HS_ENABLED ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_LINK_SECURITY ; 
 int /*<<< orphan*/  HCI_SC_ENABLED ; 
 int /*<<< orphan*/  HCI_SSP_ENABLED ; 
 int /*<<< orphan*/  MGMT_OP_SET_BREDR ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_request*,struct hci_dev*) ; 
 int FUNC12 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*) ; 
 int FUNC16 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC17 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct mgmt_pending_cmd*) ; 
 int FUNC19 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int FUNC21 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  set_bredr_complete ; 

__attribute__((used)) static int FUNC22(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
	struct mgmt_mode *cp = data;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	int err;

	FUNC0("request for %s", hdev->name);

	if (!FUNC14(hdev) || !FUNC15(hdev))
		return FUNC16(sk, hdev->id, MGMT_OP_SET_BREDR,
				       MGMT_STATUS_NOT_SUPPORTED);

	if (!FUNC9(hdev, HCI_LE_ENABLED))
		return FUNC16(sk, hdev->id, MGMT_OP_SET_BREDR,
				       MGMT_STATUS_REJECTED);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC16(sk, hdev->id, MGMT_OP_SET_BREDR,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC7(hdev);

	if (cp->val == FUNC9(hdev, HCI_BREDR_ENABLED)) {
		err = FUNC21(sk, MGMT_OP_SET_BREDR, hdev);
		goto unlock;
	}

	if (!FUNC13(hdev)) {
		if (!cp->val) {
			FUNC6(hdev, HCI_DISCOVERABLE);
			FUNC6(hdev, HCI_SSP_ENABLED);
			FUNC6(hdev, HCI_LINK_SECURITY);
			FUNC6(hdev, HCI_FAST_CONNECTABLE);
			FUNC6(hdev, HCI_HS_ENABLED);
		}

		FUNC5(hdev, HCI_BREDR_ENABLED);

		err = FUNC21(sk, MGMT_OP_SET_BREDR, hdev);
		if (err < 0)
			goto unlock;

		err = FUNC19(hdev, sk);
		goto unlock;
	}

	/* Reject disabling when powered on */
	if (!cp->val) {
		err = FUNC16(sk, hdev->id, MGMT_OP_SET_BREDR,
				      MGMT_STATUS_REJECTED);
		goto unlock;
	} else {
		/* When configuring a dual-mode controller to operate
		 * with LE only and using a static address, then switching
		 * BR/EDR back on is not allowed.
		 *
		 * Dual-mode controllers shall operate with the public
		 * address as its identity address for BR/EDR and LE. So
		 * reject the attempt to create an invalid configuration.
		 *
		 * The same restrictions applies when secure connections
		 * has been enabled. For BR/EDR this is a controller feature
		 * while for LE it is a host stack feature. This means that
		 * switching BR/EDR back on when secure connections has been
		 * enabled is not a supported transaction.
		 */
		if (!FUNC9(hdev, HCI_BREDR_ENABLED) &&
		    (FUNC4(&hdev->static_addr, BDADDR_ANY) ||
		     FUNC9(hdev, HCI_SC_ENABLED))) {
			err = FUNC16(sk, hdev->id, MGMT_OP_SET_BREDR,
					      MGMT_STATUS_REJECTED);
			goto unlock;
		}
	}

	if (FUNC20(MGMT_OP_SET_BREDR, hdev)) {
		err = FUNC16(sk, hdev->id, MGMT_OP_SET_BREDR,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	cmd = FUNC17(sk, MGMT_OP_SET_BREDR, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	/* We need to flip the bit already here so that
	 * hci_req_update_adv_data generates the correct flags.
	 */
	FUNC8(hdev, HCI_BREDR_ENABLED);

	FUNC11(&req, hdev);

	FUNC3(&req, false);
	FUNC2(&req);

	/* Since only the advertising data flags will change, there
	 * is no need to update the scan response data.
	 */
	FUNC1(&req, hdev->cur_adv_instance);

	err = FUNC12(&req, set_bredr_complete);
	if (err < 0)
		FUNC18(cmd);

unlock:
	FUNC10(hdev);
	return err;
}