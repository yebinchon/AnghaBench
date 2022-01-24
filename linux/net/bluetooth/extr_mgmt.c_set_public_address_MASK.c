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
struct mgmt_cp_set_public_address {int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  power_on; int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  public_addr; int /*<<< orphan*/  id; int /*<<< orphan*/  set_bdaddr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/ * BDADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_AUTO_OFF ; 
 int /*<<< orphan*/  HCI_CONFIG ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  MGMT_OP_SET_PUBLIC_ADDRESS ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 scalar_t__ FUNC8 (struct hci_dev*) ; 
 scalar_t__ FUNC9 (struct hci_dev*) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int FUNC12 (struct hci_dev*,struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC15(struct sock *sk, struct hci_dev *hdev,
			      void *data, u16 len)
{
	struct mgmt_cp_set_public_address *cp = data;
	bool changed;
	int err;

	FUNC0("%s", hdev->name);

	if (FUNC8(hdev))
		return FUNC10(sk, hdev->id, MGMT_OP_SET_PUBLIC_ADDRESS,
				       MGMT_STATUS_REJECTED);

	if (!FUNC1(&cp->bdaddr, BDADDR_ANY))
		return FUNC10(sk, hdev->id, MGMT_OP_SET_PUBLIC_ADDRESS,
				       MGMT_STATUS_INVALID_PARAMS);

	if (!hdev->set_bdaddr)
		return FUNC10(sk, hdev->id, MGMT_OP_SET_PUBLIC_ADDRESS,
				       MGMT_STATUS_NOT_SUPPORTED);

	FUNC4(hdev);

	changed = !!FUNC1(&hdev->public_addr, &cp->bdaddr);
	FUNC2(&hdev->public_addr, &cp->bdaddr);

	err = FUNC14(sk, MGMT_OP_SET_PUBLIC_ADDRESS, hdev);
	if (err < 0)
		goto unlock;

	if (!changed)
		goto unlock;

	if (FUNC6(hdev, HCI_UNCONFIGURED))
		err = FUNC12(hdev, sk);

	if (FUNC9(hdev)) {
		FUNC11(hdev);

		FUNC3(hdev, HCI_UNCONFIGURED);

		FUNC5(hdev, HCI_CONFIG);
		FUNC5(hdev, HCI_AUTO_OFF);

		FUNC13(hdev->req_workqueue, &hdev->power_on);
	}

unlock:
	FUNC7(hdev);
	return err;
}