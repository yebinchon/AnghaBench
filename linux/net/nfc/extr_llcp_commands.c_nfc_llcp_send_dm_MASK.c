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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int /*<<< orphan*/  tx_queue; struct nfc_dev* dev; } ;
struct nfc_dev {scalar_t__ tx_headroom; scalar_t__ tx_tailroom; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LLCP_HEADER_SIZE ; 
 int /*<<< orphan*/  LLCP_PDU_DM ; 
 scalar_t__ NFC_HEADER_SIZE ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 

int FUNC6(struct nfc_llcp_local *local, u8 ssap, u8 dsap, u8 reason)
{
	struct sk_buff *skb;
	struct nfc_dev *dev;
	u16 size = 1; /* Reason code */

	FUNC2("Sending DM reason 0x%x\n", reason);

	if (local == NULL)
		return -ENODEV;

	dev = local->dev;
	if (dev == NULL)
		return -ENODEV;

	size += LLCP_HEADER_SIZE;
	size += dev->tx_headroom + dev->tx_tailroom + NFC_HEADER_SIZE;

	skb = FUNC0(size, GFP_KERNEL);
	if (skb == NULL)
		return -ENOMEM;

	FUNC5(skb, dev->tx_headroom + NFC_HEADER_SIZE);

	skb = FUNC1(skb, dsap, ssap, LLCP_PDU_DM);

	FUNC3(skb, &reason, 1);

	FUNC4(&local->tx_queue, skb);

	return 0;
}