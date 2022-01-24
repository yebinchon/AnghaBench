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
struct sk_buff {scalar_t__ cb; } ;
struct nfc_dev {int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nfc_attrs { ____Placeholder_nfc_attrs } nfc_attrs ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  NFC_ATTR_VENDOR_ID ; 
 int /*<<< orphan*/  NFC_ATTR_VENDOR_SUBCMD ; 
 int /*<<< orphan*/  NFC_CMD_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 void* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct nfc_dev *dev, int approxlen,
			   u32 portid, u32 seq,
			   enum nfc_attrs attr,
			   u32 oui, u32 subcmd, gfp_t gfp)
{
	struct sk_buff *skb;
	void *hdr;

	skb = FUNC3(approxlen + 100, gfp);
	if (!skb)
		return NULL;

	hdr = FUNC1(skb, portid, seq, 0, NFC_CMD_VENDOR);
	if (!hdr) {
		FUNC0(skb);
		return NULL;
	}

	if (FUNC2(skb, NFC_ATTR_DEVICE_INDEX, dev->idx))
		goto nla_put_failure;
	if (FUNC2(skb, NFC_ATTR_VENDOR_ID, oui))
		goto nla_put_failure;
	if (FUNC2(skb, NFC_ATTR_VENDOR_SUBCMD, subcmd))
		goto nla_put_failure;

	((void **)skb->cb)[0] = dev;
	((void **)skb->cb)[1] = hdr;

	return skb;

nla_put_failure:
	FUNC0(skb);
	return NULL;
}