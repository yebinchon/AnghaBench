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
struct hci_ev_user_passkey_req {int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 scalar_t__ FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hci_dev *hdev,
					 struct sk_buff *skb)
{
	struct hci_ev_user_passkey_req *ev = (void *) skb->data;

	FUNC0("%s", hdev->name);

	if (FUNC1(hdev, HCI_MGMT))
		FUNC2(hdev, &ev->bdaddr, ACL_LINK, 0);
}