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
typedef  scalar_t__ u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mgmt_hdr {void* len; void* index; void* opcode; } ;
struct hci_dev {scalar_t__ id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned short HCI_CHANNEL_CONTROL ; 
 scalar_t__ MGMT_INDEX_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,scalar_t__,void*,scalar_t__,int /*<<< orphan*/ ,int,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,struct sk_buff*,int,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct mgmt_hdr* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,void*,scalar_t__) ; 

int FUNC9(u16 event, struct hci_dev *hdev, unsigned short channel,
		    void *data, u16 data_len, int flag, struct sock *skip_sk)
{
	struct sk_buff *skb;
	struct mgmt_hdr *hdr;

	skb = FUNC1(sizeof(*hdr) + data_len, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	hdr = FUNC7(skb, sizeof(*hdr));
	hdr->opcode = FUNC2(event);
	if (hdev)
		hdr->index = FUNC2(hdev->id);
	else
		hdr->index = FUNC2(MGMT_INDEX_NONE);
	hdr->len = FUNC2(data_len);

	if (data)
		FUNC8(skb, data, data_len);

	/* Time stamp */
	FUNC0(skb);

	FUNC4(channel, skb, flag, skip_sk);

	if (channel == HCI_CHANNEL_CONTROL)
		FUNC3(hdev, event, data, data_len,
					    FUNC6(skb), flag, skip_sk);

	FUNC5(skb);
	return 0;
}