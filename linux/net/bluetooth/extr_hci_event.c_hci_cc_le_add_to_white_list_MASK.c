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
struct hci_dev {int /*<<< orphan*/  le_white_list; int /*<<< orphan*/  name; } ;
struct hci_cp_le_add_to_white_list {int /*<<< orphan*/  bdaddr_type; int /*<<< orphan*/  bdaddr; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_OP_LE_ADD_TO_WHITE_LIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_cp_le_add_to_white_list* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hci_dev *hdev,
					struct sk_buff *skb)
{
	struct hci_cp_le_add_to_white_list *sent;
	__u8 status = *((__u8 *) skb->data);

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (status)
		return;

	sent = FUNC2(hdev, HCI_OP_LE_ADD_TO_WHITE_LIST);
	if (!sent)
		return;

	FUNC1(&hdev->le_white_list, &sent->bdaddr,
			   sent->bdaddr_type);
}