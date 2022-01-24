#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ priority; int /*<<< orphan*/  len; } ;
struct hci_dev {unsigned int acl_cnt; int /*<<< orphan*/  acl_last_tx; } ;
struct hci_chan {TYPE_1__* conn; int /*<<< orphan*/  sent; int /*<<< orphan*/  data_q; } ;
struct TYPE_4__ {int /*<<< orphan*/  force_active; } ;
struct TYPE_3__ {int /*<<< orphan*/  sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_chan*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,unsigned int) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 struct hci_chan* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct hci_dev *hdev)
{
	unsigned int cnt = hdev->acl_cnt;
	struct hci_chan *chan;
	struct sk_buff *skb;
	int quote;

	FUNC1(hdev, cnt);

	while (hdev->acl_cnt &&
	       (chan = FUNC3(hdev, ACL_LINK, &quote))) {
		u32 priority = (FUNC8(&chan->data_q))->priority;
		while (quote-- && (skb = FUNC8(&chan->data_q))) {
			FUNC0("chan %p skb %p len %d priority %u", chan, skb,
			       skb->len, skb->priority);

			/* Stop if priority has changed */
			if (skb->priority < priority)
				break;

			skb = FUNC7(&chan->data_q);

			FUNC4(chan->conn,
						   FUNC2(skb)->force_active);

			FUNC6(hdev, skb);
			hdev->acl_last_tx = jiffies;

			hdev->acl_cnt--;
			chan->sent++;
			chan->conn->sent++;
		}
	}

	if (cnt != hdev->acl_cnt)
		FUNC5(hdev, ACL_LINK);
}