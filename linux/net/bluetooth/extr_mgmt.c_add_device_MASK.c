#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_add_device {int action; TYPE_1__ addr; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  whitelist; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 scalar_t__ BDADDR_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_AUTO_CONN_ALWAYS ; 
 int /*<<< orphan*/  HCI_AUTO_CONN_DIRECT ; 
 int /*<<< orphan*/  HCI_AUTO_CONN_REPORT ; 
 int /*<<< orphan*/  MGMT_OP_ADD_DEVICE ; 
 int /*<<< orphan*/  MGMT_STATUS_FAILED ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct hci_dev*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct hci_dev *hdev,
		      void *data, u16 len)
{
	struct mgmt_cp_add_device *cp = data;
	u8 auto_conn, addr_type;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC2(cp->addr.type) ||
	    !FUNC1(&cp->addr.bdaddr, BDADDR_ANY))
		return FUNC12(sk, hdev->id, MGMT_OP_ADD_DEVICE,
					 MGMT_STATUS_INVALID_PARAMS,
					 &cp->addr, sizeof(cp->addr));

	if (cp->action != 0x00 && cp->action != 0x01 && cp->action != 0x02)
		return FUNC12(sk, hdev->id, MGMT_OP_ADD_DEVICE,
					 MGMT_STATUS_INVALID_PARAMS,
					 &cp->addr, sizeof(cp->addr));

	FUNC6(hdev);

	if (cp->addr.type == BDADDR_BREDR) {
		/* Only incoming connections action is supported for now */
		if (cp->action != 0x01) {
			err = FUNC12(sk, hdev->id,
						MGMT_OP_ADD_DEVICE,
						MGMT_STATUS_INVALID_PARAMS,
						&cp->addr, sizeof(cp->addr));
			goto unlock;
		}

		err = FUNC4(&hdev->whitelist, &cp->addr.bdaddr,
					  cp->addr.type);
		if (err)
			goto unlock;

		FUNC9(hdev);

		goto added;
	}

	addr_type = FUNC11(cp->addr.type);

	if (cp->action == 0x02)
		auto_conn = HCI_AUTO_CONN_ALWAYS;
	else if (cp->action == 0x01)
		auto_conn = HCI_AUTO_CONN_DIRECT;
	else
		auto_conn = HCI_AUTO_CONN_REPORT;

	/* Kernel internally uses conn_params with resolvable private
	 * address, but Add Device allows only identity addresses.
	 * Make sure it is enforced before calling
	 * hci_conn_params_lookup.
	 */
	if (!FUNC8(&cp->addr.bdaddr, addr_type)) {
		err = FUNC12(sk, hdev->id, MGMT_OP_ADD_DEVICE,
					MGMT_STATUS_INVALID_PARAMS,
					&cp->addr, sizeof(cp->addr));
		goto unlock;
	}

	/* If the connection parameters don't exist for this device,
	 * they will be created and configured with defaults.
	 */
	if (FUNC5(hdev, &cp->addr.bdaddr, addr_type,
				auto_conn) < 0) {
		err = FUNC12(sk, hdev->id, MGMT_OP_ADD_DEVICE,
					MGMT_STATUS_FAILED, &cp->addr,
					sizeof(cp->addr));
		goto unlock;
	}

	FUNC10(hdev);

added:
	FUNC3(sk, hdev, &cp->addr.bdaddr, cp->addr.type, cp->action);

	err = FUNC12(sk, hdev->id, MGMT_OP_ADD_DEVICE,
				MGMT_STATUS_SUCCESS, &cp->addr,
				sizeof(cp->addr));

unlock:
	FUNC7(hdev);
	return err;
}