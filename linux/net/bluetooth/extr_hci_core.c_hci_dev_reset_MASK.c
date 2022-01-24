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
struct hci_dev {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EBUSY ; 
 int ENETDOWN ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  HCI_UP ; 
 int /*<<< orphan*/  HCI_USER_CHANNEL ; 
 int FUNC0 (struct hci_dev*) ; 
 struct hci_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(__u16 dev)
{
	struct hci_dev *hdev;
	int err;

	hdev = FUNC1(dev);
	if (!hdev)
		return -ENODEV;

	if (!FUNC4(HCI_UP, &hdev->flags)) {
		err = -ENETDOWN;
		goto done;
	}

	if (FUNC3(hdev, HCI_USER_CHANNEL)) {
		err = -EBUSY;
		goto done;
	}

	if (FUNC3(hdev, HCI_UNCONFIGURED)) {
		err = -EOPNOTSUPP;
		goto done;
	}

	err = FUNC0(hdev);

done:
	FUNC2(hdev);
	return err;
}