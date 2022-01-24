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
typedef  scalar_t__ u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_set_appearance {int /*<<< orphan*/  appearance; } ;
struct hci_dev {scalar_t__ appearance; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  MGMT_ADV_FLAG_APPEARANCE ; 
 int /*<<< orphan*/  MGMT_OP_SET_APPEARANCE ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct hci_dev *hdev, void *data,
			  u16 len)
{
	struct mgmt_cp_set_appearance *cp = data;
	u16 apperance;
	int err;

	FUNC0("");

	if (!FUNC7(hdev))
		return FUNC9(sk, hdev->id, MGMT_OP_SET_APPEARANCE,
				       MGMT_STATUS_NOT_SUPPORTED);

	apperance = FUNC6(cp->appearance);

	FUNC3(hdev);

	if (hdev->appearance != apperance) {
		hdev->appearance = apperance;

		if (FUNC4(hdev, HCI_LE_ADV))
			FUNC1(hdev, MGMT_ADV_FLAG_APPEARANCE);

		FUNC2(hdev, sk);
	}

	err = FUNC8(sk, hdev->id, MGMT_OP_SET_APPEARANCE, 0, NULL,
				0);

	FUNC5(hdev);

	return err;
}