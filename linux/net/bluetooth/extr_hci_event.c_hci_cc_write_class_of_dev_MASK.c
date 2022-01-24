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
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int /*<<< orphan*/  dev_class; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_WRITE_CLASS_OF_DEV ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 void* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,void*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct hci_dev *hdev, struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);
	void *sent;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	sent = FUNC4(hdev, HCI_OP_WRITE_CLASS_OF_DEV);
	if (!sent)
		return;

	FUNC1(hdev);

	if (status == 0)
		FUNC5(hdev->dev_class, sent, 3);

	if (FUNC2(hdev, HCI_MGMT))
		FUNC6(hdev, sent, status);

	FUNC3(hdev);
}