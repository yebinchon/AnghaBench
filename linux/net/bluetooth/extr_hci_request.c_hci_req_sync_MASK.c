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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hci_dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  HCI_UP ; 
 int FUNC0 (struct hci_dev*,int (*) (struct hci_request*,unsigned long),unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct hci_dev *hdev, int (*req)(struct hci_request *req,
						  unsigned long opt),
		 unsigned long opt, u32 timeout, u8 *hci_status)
{
	int ret;

	if (!FUNC3(HCI_UP, &hdev->flags))
		return -ENETDOWN;

	/* Serialize all requests */
	FUNC1(hdev);
	ret = FUNC0(hdev, req, opt, timeout, hci_status);
	FUNC2(hdev);

	return ret;
}