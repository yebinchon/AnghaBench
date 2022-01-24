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
struct hci_conn {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 

void FUNC5(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;

	FUNC0("conn %p", conn);

	FUNC2(&conn->dev, "%s:%d", hdev->name, conn->handle);

	if (FUNC3(&conn->dev) < 0) {
		FUNC1(hdev, "failed to register connection device");
		return;
	}

	FUNC4(hdev);
}