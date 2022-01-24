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
struct hci_rp_read_bd_addr {int /*<<< orphan*/  bdaddr; scalar_t__ status; } ;
struct hci_dev {int /*<<< orphan*/  setup_addr; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_INIT ; 
 int /*<<< orphan*/  HCI_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_rp_read_bd_addr *rp = (void *) skb->data;

	FUNC0("%s status 0x%2.2x", hdev->name, rp->status);

	if (rp->status)
		return;

	if (FUNC3(HCI_INIT, &hdev->flags))
		FUNC1(&hdev->bdaddr, &rp->bdaddr);

	if (FUNC2(hdev, HCI_SETUP))
		FUNC1(&hdev->setup_addr, &rp->bdaddr);
}