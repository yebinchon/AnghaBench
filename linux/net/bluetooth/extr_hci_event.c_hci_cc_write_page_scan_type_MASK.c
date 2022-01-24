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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {scalar_t__ page_scan_type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_OP_WRITE_PAGE_SCAN_TYPE ; 
 scalar_t__* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hci_dev *hdev,
					struct sk_buff *skb)
{
	u8 status = *((u8 *) skb->data);
	u8 *type;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (status)
		return;

	type = FUNC1(hdev, HCI_OP_WRITE_PAGE_SCAN_TYPE);
	if (type)
		hdev->page_scan_type = *type;
}