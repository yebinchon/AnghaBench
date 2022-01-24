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
struct hci_dev {int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  power_off; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HCI_AUTO_OFF ; 
 int /*<<< orphan*/  HCI_BONDABLE ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  HCI_USER_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hci_dev*) ; 
 struct hci_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 

int FUNC8(__u16 dev)
{
	struct hci_dev *hdev;
	int err;

	hdev = FUNC3(dev);
	if (!hdev)
		return -ENODEV;

	/* Devices that are marked as unconfigured can only be powered
	 * up as user channel. Trying to bring them up as normal devices
	 * will result into a failure. Only user channel operation is
	 * possible.
	 *
	 * When this function is called for a user channel, the flag
	 * HCI_USER_CHANNEL will be set first before attempting to
	 * open the device.
	 */
	if (FUNC7(hdev, HCI_UNCONFIGURED) &&
	    !FUNC7(hdev, HCI_USER_CHANNEL)) {
		err = -EOPNOTSUPP;
		goto done;
	}

	/* We need to ensure that no other power on/off work is pending
	 * before proceeding to call hci_dev_do_open. This is
	 * particularly important if the setup procedure has not yet
	 * completed.
	 */
	if (FUNC6(hdev, HCI_AUTO_OFF))
		FUNC0(&hdev->power_off);

	/* After this call it is guaranteed that the setup procedure
	 * has finished. This means that error conditions like RFKILL
	 * or no valid public or static random address apply.
	 */
	FUNC1(hdev->req_workqueue);

	/* For controllers not using the management interface and that
	 * are brought up using legacy ioctl, set the HCI_BONDABLE bit
	 * so that pairing works for them. Once the management interface
	 * is in use this bit will be cleared again and userspace has
	 * to explicitly enable it.
	 */
	if (!FUNC7(hdev, HCI_USER_CHANNEL) &&
	    !FUNC7(hdev, HCI_MGMT))
		FUNC5(hdev, HCI_BONDABLE);

	err = FUNC2(hdev);

done:
	FUNC4(hdev);
	return err;
}