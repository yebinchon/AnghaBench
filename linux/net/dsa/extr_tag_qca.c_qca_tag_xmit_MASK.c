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
typedef  int u16 ;
struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct dsa_port {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETH_ALEN ; 
 scalar_t__ QCA_HDR_LEN ; 
 int QCA_HDR_VERSION ; 
 int QCA_HDR_XMIT_FROM_CPU ; 
 int QCA_HDR_XMIT_VERSION_S ; 
 struct dsa_port* FUNC1 (struct net_device*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct sk_buff *skb, struct net_device *dev)
{
	struct dsa_port *dp = FUNC1(dev);
	u16 *phdr, hdr;

	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;

	if (FUNC4(skb, 0) < 0)
		return NULL;

	FUNC5(skb, QCA_HDR_LEN);

	FUNC3(skb->data, skb->data + QCA_HDR_LEN, 2 * ETH_ALEN);
	phdr = (u16 *)(skb->data + 2 * ETH_ALEN);

	/* Set the version field, and set destination port information */
	hdr = QCA_HDR_VERSION << QCA_HDR_XMIT_VERSION_S |
		QCA_HDR_XMIT_FROM_CPU | FUNC0(dp->index);

	*phdr = FUNC2(hdr);

	return skb;
}