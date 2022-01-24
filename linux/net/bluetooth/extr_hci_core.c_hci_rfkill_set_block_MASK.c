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
struct hci_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  HCI_CONFIG ; 
 int /*<<< orphan*/  HCI_RFKILLED ; 
 int /*<<< orphan*/  HCI_SETUP ; 
 int /*<<< orphan*/  HCI_USER_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *data, bool blocked)
{
	struct hci_dev *hdev = data;

	FUNC0("%p name %s blocked %d", hdev, hdev->name, blocked);

	if (FUNC4(hdev, HCI_USER_CHANNEL))
		return -EBUSY;

	if (blocked) {
		FUNC3(hdev, HCI_RFKILLED);
		if (!FUNC4(hdev, HCI_SETUP) &&
		    !FUNC4(hdev, HCI_CONFIG))
			FUNC2(hdev);
	} else {
		FUNC1(hdev, HCI_RFKILLED);
	}

	return 0;
}