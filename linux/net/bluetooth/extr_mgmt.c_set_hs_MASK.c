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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_HS_ENABLED ; 
 int /*<<< orphan*/  HCI_SSP_ENABLED ; 
 int /*<<< orphan*/  MGMT_OP_SET_HS ; 
 int /*<<< orphan*/  MGMT_OP_SET_SSP ; 
 scalar_t__ MGMT_STATUS_BUSY ; 
 scalar_t__ MGMT_STATUS_INVALID_PARAMS ; 
 scalar_t__ MGMT_STATUS_NOT_SUPPORTED ; 
 scalar_t__ MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 scalar_t__ FUNC8 (struct hci_dev*) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int FUNC12 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
	struct mgmt_mode *cp = data;
	bool changed;
	u8 status;
	int err;

	FUNC0("request for %s", hdev->name);

	status = FUNC8(hdev);
	if (status)
		return FUNC9(sk, hdev->id, MGMT_OP_SET_HS, status);

	if (!FUNC7(hdev))
		return FUNC9(sk, hdev->id, MGMT_OP_SET_HS,
				       MGMT_STATUS_NOT_SUPPORTED);

	if (!FUNC4(hdev, HCI_SSP_ENABLED))
		return FUNC9(sk, hdev->id, MGMT_OP_SET_HS,
				       MGMT_STATUS_REJECTED);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC9(sk, hdev->id, MGMT_OP_SET_HS,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC1(hdev);

	if (FUNC11(MGMT_OP_SET_SSP, hdev)) {
		err = FUNC9(sk, hdev->id, MGMT_OP_SET_HS,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	if (cp->val) {
		changed = !FUNC3(hdev, HCI_HS_ENABLED);
	} else {
		if (FUNC6(hdev)) {
			err = FUNC9(sk, hdev->id, MGMT_OP_SET_HS,
					      MGMT_STATUS_REJECTED);
			goto unlock;
		}

		changed = FUNC2(hdev, HCI_HS_ENABLED);
	}

	err = FUNC12(sk, MGMT_OP_SET_HS, hdev);
	if (err < 0)
		goto unlock;

	if (changed)
		err = FUNC10(hdev, sk);

unlock:
	FUNC5(hdev);
	return err;
}