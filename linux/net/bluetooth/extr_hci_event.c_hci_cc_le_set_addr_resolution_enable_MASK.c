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
struct hci_dev {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_LL_RPA_RESOLUTION ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_ADDR_RESOLV_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev,
						struct sk_buff *skb)
{
	__u8 *sent, status = *((__u8 *) skb->data);

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (status)
		return;

	sent = FUNC5(hdev, HCI_OP_LE_SET_ADDR_RESOLV_ENABLE);
	if (!sent)
		return;

	FUNC2(hdev);

	if (*sent)
		FUNC3(hdev, HCI_LL_RPA_RESOLUTION);
	else
		FUNC1(hdev, HCI_LL_RPA_RESOLUTION);

	FUNC4(hdev);
}