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
struct mgmt_cp_set_privacy {int privacy; int /*<<< orphan*/  irk; } ;
struct hci_dev {int /*<<< orphan*/  irk; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_LIMITED_PRIVACY ; 
 int /*<<< orphan*/  HCI_PRIVACY ; 
 int /*<<< orphan*/  HCI_RPA_EXPIRED ; 
 int /*<<< orphan*/  HCI_RPA_RESOLVING ; 
 int /*<<< orphan*/  MGMT_OP_SET_PRIVACY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 scalar_t__ FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct hci_dev*,struct sock*) ; 
 int FUNC14 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC15(struct sock *sk, struct hci_dev *hdev, void *cp_data,
		       u16 len)
{
	struct mgmt_cp_set_privacy *cp = cp_data;
	bool changed;
	int err;

	FUNC0("request for %s", hdev->name);

	if (!FUNC9(hdev))
		return FUNC12(sk, hdev->id, MGMT_OP_SET_PRIVACY,
				       MGMT_STATUS_NOT_SUPPORTED);

	if (cp->privacy != 0x00 && cp->privacy != 0x01 && cp->privacy != 0x02)
		return FUNC12(sk, hdev->id, MGMT_OP_SET_PRIVACY,
				       MGMT_STATUS_INVALID_PARAMS);

	if (FUNC8(hdev))
		return FUNC12(sk, hdev->id, MGMT_OP_SET_PRIVACY,
				       MGMT_STATUS_REJECTED);

	FUNC3(hdev);

	/* If user space supports this command it is also expected to
	 * handle IRKs. Therefore, set the HCI_RPA_RESOLVING flag.
	 */
	FUNC4(hdev, HCI_RPA_RESOLVING);

	if (cp->privacy) {
		changed = !FUNC6(hdev, HCI_PRIVACY);
		FUNC10(hdev->irk, cp->irk, sizeof(hdev->irk));
		FUNC4(hdev, HCI_RPA_EXPIRED);
		FUNC1(hdev, true);
		if (cp->privacy == 0x02)
			FUNC4(hdev, HCI_LIMITED_PRIVACY);
		else
			FUNC2(hdev, HCI_LIMITED_PRIVACY);
	} else {
		changed = FUNC5(hdev, HCI_PRIVACY);
		FUNC11(hdev->irk, 0, sizeof(hdev->irk));
		FUNC2(hdev, HCI_RPA_EXPIRED);
		FUNC1(hdev, false);
		FUNC2(hdev, HCI_LIMITED_PRIVACY);
	}

	err = FUNC14(sk, MGMT_OP_SET_PRIVACY, hdev);
	if (err < 0)
		goto unlock;

	if (changed)
		err = FUNC13(hdev, sk);

unlock:
	FUNC7(hdev);
	return err;
}