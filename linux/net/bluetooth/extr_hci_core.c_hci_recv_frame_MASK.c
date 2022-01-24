#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  rx_q; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int incoming; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ HCI_ACLDATA_PKT ; 
 scalar_t__ HCI_EVENT_PKT ; 
 int /*<<< orphan*/  HCI_INIT ; 
 scalar_t__ HCI_SCODATA_PKT ; 
 int /*<<< orphan*/  HCI_UP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct hci_dev *hdev, struct sk_buff *skb)
{
	if (!hdev || (!FUNC6(HCI_UP, &hdev->flags)
		      && !FUNC6(HCI_INIT, &hdev->flags))) {
		FUNC3(skb);
		return -ENXIO;
	}

	if (FUNC2(skb) != HCI_EVENT_PKT &&
	    FUNC2(skb) != HCI_ACLDATA_PKT &&
	    FUNC2(skb) != HCI_SCODATA_PKT) {
		FUNC3(skb);
		return -EINVAL;
	}

	/* Incoming skb */
	FUNC1(skb)->incoming = 1;

	/* Time stamp */
	FUNC0(skb);

	FUNC5(&hdev->rx_q, skb);
	FUNC4(hdev->workqueue, &hdev->rx_work);

	return 0;
}