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
struct hci_dev {int dummy; } ;
struct hci_conn {int /*<<< orphan*/  dev; struct hci_dev* hdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_ORDER_DEV_LAST ; 
 int /*<<< orphan*/  __match_tty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

void FUNC6(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;

	if (!FUNC2(&conn->dev))
		return;

	while (1) {
		struct device *dev;

		dev = FUNC1(&conn->dev, NULL, __match_tty);
		if (!dev)
			break;
		FUNC3(dev, NULL, DPM_ORDER_DEV_LAST);
		FUNC5(dev);
	}

	FUNC0(&conn->dev);

	FUNC4(hdev);
}