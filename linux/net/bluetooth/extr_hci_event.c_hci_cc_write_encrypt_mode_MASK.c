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
struct hci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_ENCRYPT ; 
 int /*<<< orphan*/  HCI_OP_WRITE_ENCRYPT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hci_dev *hdev, struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);
	__u8 param;
	void *sent;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (status)
		return;

	sent = FUNC2(hdev, HCI_OP_WRITE_ENCRYPT_MODE);
	if (!sent)
		return;

	param = *((__u8 *) sent);

	if (param)
		FUNC3(HCI_ENCRYPT, &hdev->flags);
	else
		FUNC1(HCI_ENCRYPT, &hdev->flags);
}