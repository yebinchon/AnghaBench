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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nci_dev {TYPE_1__* ops; int /*<<< orphan*/  nfc_dev; } ;
struct TYPE_2__ {int (* send ) (struct nci_dev*,struct sk_buff*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  NFC_DIRECTION_TX ; 
 int /*<<< orphan*/  RAW_PAYLOAD_NCI ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct nci_dev*,struct sk_buff*) ; 

int FUNC5(struct nci_dev *ndev, struct sk_buff *skb)
{
	FUNC2("len %d\n", skb->len);

	if (!ndev) {
		FUNC0(skb);
		return -ENODEV;
	}

	/* Get rid of skb owner, prior to sending to the driver. */
	FUNC3(skb);

	/* Send copy to sniffer */
	FUNC1(ndev->nfc_dev, skb,
			     RAW_PAYLOAD_NCI, NFC_DIRECTION_TX);

	return ndev->ops->send(ndev, skb);
}