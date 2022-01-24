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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int /*<<< orphan*/  target_idx; } ;
struct nfc_dev {scalar_t__ tx_headroom; scalar_t__ tx_tailroom; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LLCP_HEADER_SIZE ; 
 int /*<<< orphan*/  LLCP_PDU_SYMM ; 
 int /*<<< orphan*/  NFC_DIRECTION_TX ; 
 scalar_t__ NFC_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfc_dev*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct nfc_llcp_local*) ; 
 struct nfc_llcp_local* FUNC4 (struct nfc_dev*) ; 
 int /*<<< orphan*/  nfc_llcp_recv ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_llcp_local*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

int FUNC8(struct nfc_dev *dev)
{
	struct sk_buff *skb;
	struct nfc_llcp_local *local;
	u16 size = 0;

	FUNC6("Sending SYMM\n");

	local = FUNC4(dev);
	if (local == NULL)
		return -ENODEV;

	size += LLCP_HEADER_SIZE;
	size += dev->tx_headroom + dev->tx_tailroom + NFC_HEADER_SIZE;

	skb = FUNC1(size, GFP_KERNEL);
	if (skb == NULL)
		return -ENOMEM;

	FUNC7(skb, dev->tx_headroom + NFC_HEADER_SIZE);

	skb = FUNC2(skb, 0, 0, LLCP_PDU_SYMM);

	FUNC0(skb);

	FUNC5(local, skb, NFC_DIRECTION_TX);

	return FUNC3(dev, local->target_idx, skb,
				 nfc_llcp_recv, local);
}