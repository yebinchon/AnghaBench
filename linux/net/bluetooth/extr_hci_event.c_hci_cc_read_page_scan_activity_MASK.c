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
struct hci_rp_read_page_scan_activity {int /*<<< orphan*/  window; int /*<<< orphan*/  interval; scalar_t__ status; } ;
struct hci_dev {void* page_scan_window; void* page_scan_interval; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_INIT ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hci_dev *hdev,
					   struct sk_buff *skb)
{
	struct hci_rp_read_page_scan_activity *rp = (void *) skb->data;

	FUNC0("%s status 0x%2.2x", hdev->name, rp->status);

	if (rp->status)
		return;

	if (FUNC2(HCI_INIT, &hdev->flags)) {
		hdev->page_scan_interval = FUNC1(rp->interval);
		hdev->page_scan_window = FUNC1(rp->window);
	}
}