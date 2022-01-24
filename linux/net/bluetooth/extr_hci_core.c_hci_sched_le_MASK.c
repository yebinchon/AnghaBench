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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ priority; int /*<<< orphan*/  len; } ;
struct hci_dev {int le_cnt; int acl_cnt; scalar_t__ le_pkts; scalar_t__ le_last_tx; int /*<<< orphan*/  name; } ;
struct hci_chan {TYPE_1__* conn; int /*<<< orphan*/  sent; int /*<<< orphan*/  data_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_chan*,...) ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int HZ ; 
 int /*<<< orphan*/  LE_LINK ; 
 struct hci_chan* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct hci_dev *hdev)
{
	struct hci_chan *chan;
	struct sk_buff *skb;
	int quote, cnt, tmp;

	FUNC0("%s", hdev->name);

	if (!FUNC2(hdev, LE_LINK))
		return;

	if (!FUNC3(hdev, HCI_UNCONFIGURED)) {
		/* LE tx timeout must be longer than maximum
		 * link supervision timeout (40.9 seconds) */
		if (!hdev->le_cnt && hdev->le_pkts &&
		    FUNC9(jiffies, hdev->le_last_tx + HZ * 45))
			FUNC4(hdev, LE_LINK);
	}

	cnt = hdev->le_pkts ? hdev->le_cnt : hdev->acl_cnt;
	tmp = cnt;
	while (cnt && (chan = FUNC1(hdev, LE_LINK, &quote))) {
		u32 priority = (FUNC8(&chan->data_q))->priority;
		while (quote-- && (skb = FUNC8(&chan->data_q))) {
			FUNC0("chan %p skb %p len %d priority %u", chan, skb,
			       skb->len, skb->priority);

			/* Stop if priority has changed */
			if (skb->priority < priority)
				break;

			skb = FUNC7(&chan->data_q);

			FUNC6(hdev, skb);
			hdev->le_last_tx = jiffies;

			cnt--;
			chan->sent++;
			chan->conn->sent++;
		}
	}

	if (hdev->le_pkts)
		hdev->le_cnt = cnt;
	else
		hdev->acl_cnt = cnt;

	if (cnt != tmp)
		FUNC5(hdev, LE_LINK);
}