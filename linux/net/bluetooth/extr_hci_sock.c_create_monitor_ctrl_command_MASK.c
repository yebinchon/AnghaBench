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
typedef  scalar_t__ u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HCI_MON_CTRL_COMMAND ; 
 scalar_t__ HCI_MON_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_mon_hdr* FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,void const*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct sock *sk, u16 index,
						   u16 opcode, u16 len,
						   const void *buf)
{
	struct hci_mon_hdr *hdr;
	struct sk_buff *skb;

	skb = FUNC1(6 + len, GFP_ATOMIC);
	if (!skb)
		return NULL;

	FUNC5(FUNC3(sk)->cookie, FUNC7(skb, 4));
	FUNC4(opcode, FUNC7(skb, 2));

	if (buf)
		FUNC8(skb, buf, len);

	FUNC0(skb);

	hdr = FUNC6(skb, HCI_MON_HDR_SIZE);
	hdr->opcode = FUNC2(HCI_MON_CTRL_COMMAND);
	hdr->index = FUNC2(index);
	hdr->len = FUNC2(skb->len - HCI_MON_HDR_SIZE);

	return skb;
}