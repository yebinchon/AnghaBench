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
struct rfcomm_dev {int /*<<< orphan*/  tty_dev; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  DPM_ORDER_DEV_AFTER_PARENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct hci_dev* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rfcomm_dev *dev)
{
	struct hci_dev *hdev;
	struct hci_conn *conn;

	hdev = FUNC6(&dev->dst, &dev->src, BDADDR_BREDR);
	if (!hdev)
		return;

	/* The lookup results are unsafe to access without the
	 * hci device lock (FIXME: why is this not documented?)
	 */
	FUNC3(hdev);
	conn = FUNC2(hdev, ACL_LINK, &dev->dst);

	/* Just because the acl link is in the hash table is no
	 * guarantee the sysfs device has been added ...
	 */
	if (conn && FUNC0(&conn->dev))
		FUNC1(dev->tty_dev, &conn->dev, DPM_ORDER_DEV_AFTER_PARENT);

	FUNC5(hdev);
	FUNC4(hdev);
}