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
struct sock {int dummy; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_CONNECTABLE ; 
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  MGMT_OP_SET_CONNECTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*,struct sock*) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC7(struct hci_dev *hdev,
					   struct sock *sk, u8 val)
{
	bool changed = false;
	int err;

	if (!!val != FUNC2(hdev, HCI_CONNECTABLE))
		changed = true;

	if (val) {
		FUNC1(hdev, HCI_CONNECTABLE);
	} else {
		FUNC0(hdev, HCI_CONNECTABLE);
		FUNC0(hdev, HCI_DISCOVERABLE);
	}

	err = FUNC6(sk, MGMT_OP_SET_CONNECTABLE, hdev);
	if (err < 0)
		return err;

	if (changed) {
		FUNC3(hdev);
		FUNC4(hdev);
		return FUNC5(hdev, sk);
	}

	return 0;
}