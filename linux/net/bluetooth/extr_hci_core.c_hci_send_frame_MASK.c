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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct hci_dev {int (* send ) (struct hci_dev*,struct sk_buff*) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  promisc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev, struct sk_buff *skb)
{
	int err;

	FUNC0("%s type %d len %d", hdev->name, FUNC6(skb),
	       skb->len);

	/* Time stamp */
	FUNC1(skb);

	/* Send copy to monitor */
	FUNC4(hdev, skb);

	if (FUNC2(&hdev->promisc)) {
		/* Send copy to the sockets */
		FUNC5(hdev, skb);
	}

	/* Get rid of skb owner, prior to sending to the driver. */
	FUNC8(skb);

	if (!FUNC10(HCI_RUNNING, &hdev->flags)) {
		FUNC7(skb);
		return;
	}

	err = hdev->send(hdev, skb);
	if (err < 0) {
		FUNC3(hdev, "sending frame failed (%d)", err);
		FUNC7(skb);
	}
}