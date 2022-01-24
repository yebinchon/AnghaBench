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
struct hci_dev {int /*<<< orphan*/  power_off; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  HCI_AUTO_OFF ; 
 int /*<<< orphan*/  HCI_USER_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hci_dev*) ; 
 struct hci_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 

int FUNC6(__u16 dev)
{
	struct hci_dev *hdev;
	int err;

	hdev = FUNC2(dev);
	if (!hdev)
		return -ENODEV;

	if (FUNC5(hdev, HCI_USER_CHANNEL)) {
		err = -EBUSY;
		goto done;
	}

	if (FUNC4(hdev, HCI_AUTO_OFF))
		FUNC0(&hdev->power_off);

	err = FUNC1(hdev);

done:
	FUNC3(hdev);
	return err;
}