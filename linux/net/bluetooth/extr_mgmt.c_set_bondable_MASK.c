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
struct mgmt_mode {int val; } ;
struct hci_dev {int /*<<< orphan*/  discoverable_update; int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  HCI_BONDABLE ; 
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_LIMITED_PRIVACY ; 
 int /*<<< orphan*/  MGMT_OP_SET_BONDABLE ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct hci_dev*,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct hci_dev *hdev, void *data,
			u16 len)
{
	struct mgmt_mode *cp = data;
	bool changed;
	int err;

	FUNC0("request for %s", hdev->name);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC7(sk, hdev->id, MGMT_OP_SET_BONDABLE,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC1(hdev);

	if (cp->val)
		changed = !FUNC3(hdev, HCI_BONDABLE);
	else
		changed = FUNC2(hdev, HCI_BONDABLE);

	err = FUNC10(sk, MGMT_OP_SET_BONDABLE, hdev);
	if (err < 0)
		goto unlock;

	if (changed) {
		/* In limited privacy mode the change of bondable mode
		 * may affect the local advertising address.
		 */
		if (FUNC6(hdev) &&
		    FUNC4(hdev, HCI_ADVERTISING) &&
		    FUNC4(hdev, HCI_DISCOVERABLE) &&
		    FUNC4(hdev, HCI_LIMITED_PRIVACY))
			FUNC9(hdev->req_workqueue,
				   &hdev->discoverable_update);

		err = FUNC8(hdev, sk);
	}

unlock:
	FUNC5(hdev);
	return err;
}