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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ priority; int /*<<< orphan*/  len; } ;
struct hci_dev {unsigned int block_cnt; scalar_t__ dev_type; int /*<<< orphan*/  acl_last_tx; int /*<<< orphan*/  name; } ;
struct hci_chan {int sent; TYPE_1__* conn; int /*<<< orphan*/  data_q; } ;
struct TYPE_4__ {int /*<<< orphan*/  force_active; } ;
struct TYPE_3__ {int sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  AMP_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_chan*,...) ; 
 scalar_t__ HCI_AMP ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,unsigned int) ; 
 int FUNC2 (struct hci_dev*,struct sk_buff*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 struct hci_chan* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hci_dev *hdev)
{
	unsigned int cnt = hdev->block_cnt;
	struct hci_chan *chan;
	struct sk_buff *skb;
	int quote;
	u8 type;

	FUNC1(hdev, cnt);

	FUNC0("%s", hdev->name);

	if (hdev->dev_type == HCI_AMP)
		type = AMP_LINK;
	else
		type = ACL_LINK;

	while (hdev->block_cnt > 0 &&
	       (chan = FUNC4(hdev, type, &quote))) {
		u32 priority = (FUNC9(&chan->data_q))->priority;
		while (quote > 0 && (skb = FUNC9(&chan->data_q))) {
			int blocks;

			FUNC0("chan %p skb %p len %d priority %u", chan, skb,
			       skb->len, skb->priority);

			/* Stop if priority has changed */
			if (skb->priority < priority)
				break;

			skb = FUNC8(&chan->data_q);

			blocks = FUNC2(hdev, skb);
			if (blocks > hdev->block_cnt)
				return;

			FUNC5(chan->conn,
						   FUNC3(skb)->force_active);

			FUNC7(hdev, skb);
			hdev->acl_last_tx = jiffies;

			hdev->block_cnt -= blocks;
			quote -= blocks;

			chan->sent += blocks;
			chan->conn->sent += blocks;
		}
	}

	if (cnt != hdev->block_cnt)
		FUNC6(hdev, type);
}