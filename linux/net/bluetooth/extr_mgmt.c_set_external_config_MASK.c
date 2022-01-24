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
struct mgmt_cp_set_external_config {int config; } ;
struct hci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  power_on; int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  id; int /*<<< orphan*/  quirks; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_AUTO_OFF ; 
 int /*<<< orphan*/  HCI_CONFIG ; 
 int /*<<< orphan*/  HCI_EXT_CONFIGURED ; 
 int /*<<< orphan*/  HCI_QUIRK_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  HCI_RAW ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  MGMT_OP_SET_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 scalar_t__ FUNC8 (struct hci_dev*) ; 
 scalar_t__ FUNC9 (struct hci_dev*) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*) ; 
 int FUNC13 (struct hci_dev*,struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct sock *sk, struct hci_dev *hdev,
			       void *data, u16 len)
{
	struct mgmt_cp_set_external_config *cp = data;
	bool changed;
	int err;

	FUNC0("%s", hdev->name);

	if (FUNC8(hdev))
		return FUNC10(sk, hdev->id, MGMT_OP_SET_EXTERNAL_CONFIG,
				       MGMT_STATUS_REJECTED);

	if (cp->config != 0x00 && cp->config != 0x01)
		return FUNC10(sk, hdev->id, MGMT_OP_SET_EXTERNAL_CONFIG,
				         MGMT_STATUS_INVALID_PARAMS);

	if (!FUNC17(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks))
		return FUNC10(sk, hdev->id, MGMT_OP_SET_EXTERNAL_CONFIG,
				       MGMT_STATUS_NOT_SUPPORTED);

	FUNC1(hdev);

	if (cp->config)
		changed = !FUNC5(hdev, HCI_EXT_CONFIGURED);
	else
		changed = FUNC4(hdev, HCI_EXT_CONFIGURED);

	err = FUNC15(sk, MGMT_OP_SET_EXTERNAL_CONFIG, hdev);
	if (err < 0)
		goto unlock;

	if (!changed)
		goto unlock;

	err = FUNC13(hdev, sk);

	if (FUNC6(hdev, HCI_UNCONFIGURED) == FUNC9(hdev)) {
		FUNC12(hdev);

		if (FUNC3(hdev, HCI_UNCONFIGURED)) {
			FUNC2(hdev, HCI_CONFIG);
			FUNC2(hdev, HCI_AUTO_OFF);

			FUNC14(hdev->req_workqueue, &hdev->power_on);
		} else {
			FUNC16(HCI_RAW, &hdev->flags);
			FUNC11(hdev);
		}
	}

unlock:
	FUNC7(hdev);
	return err;
}