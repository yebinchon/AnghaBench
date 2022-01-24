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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; } ;
struct hci_mon_hdr {void* len; int /*<<< orphan*/  index; void* opcode; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HCI_MON_CTRL_EVENT ; 
 scalar_t__ HCI_MON_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_mon_hdr* FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC8(__le16 index, u32 cookie,
						 u16 opcode, u16 len, void *buf)
{
	struct hci_mon_hdr *hdr;
	struct sk_buff *skb;

	skb = FUNC1(6 + len, GFP_ATOMIC);
	if (!skb)
		return NULL;

	FUNC4(cookie, FUNC6(skb, 4));
	FUNC3(opcode, FUNC6(skb, 2));

	if (buf)
		FUNC7(skb, buf, len);

	FUNC0(skb);

	hdr = FUNC5(skb, HCI_MON_HDR_SIZE);
	hdr->opcode = FUNC2(HCI_MON_CTRL_EVENT);
	hdr->index = index;
	hdr->len = FUNC2(skb->len - HCI_MON_HDR_SIZE);

	return skb;
}