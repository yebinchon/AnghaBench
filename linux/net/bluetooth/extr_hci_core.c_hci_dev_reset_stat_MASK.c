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
struct hci_dev_stats {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  stat; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  HCI_USER_CHANNEL ; 
 struct hci_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC4(__u16 dev)
{
	struct hci_dev *hdev;
	int ret = 0;

	hdev = FUNC0(dev);
	if (!hdev)
		return -ENODEV;

	if (FUNC2(hdev, HCI_USER_CHANNEL)) {
		ret = -EBUSY;
		goto done;
	}

	if (FUNC2(hdev, HCI_UNCONFIGURED)) {
		ret = -EOPNOTSUPP;
		goto done;
	}

	FUNC3(&hdev->stat, 0, sizeof(struct hci_dev_stats));

done:
	FUNC1(hdev);
	return ret;
}