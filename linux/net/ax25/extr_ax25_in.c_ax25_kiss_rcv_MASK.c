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
struct sk_buff {int* data; } ;
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ dev_addr; } ;
typedef  int /*<<< orphan*/  ax25_address ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_KISS_HEADER_LEN ; 
 int FUNC0 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ *,struct packet_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC6(struct sk_buff *skb, struct net_device *dev,
		  struct packet_type *ptype, struct net_device *orig_dev)
{
	FUNC4(skb);

	if (!FUNC3(FUNC1(dev), &init_net)) {
		FUNC2(skb);
		return 0;
	}

	if ((*skb->data & 0x0F) != 0) {
		FUNC2(skb);	/* Not a KISS data frame */
		return 0;
	}

	FUNC5(skb, AX25_KISS_HEADER_LEN);	/* Remove the KISS byte */

	return FUNC0(skb, dev, (ax25_address *)dev->dev_addr, ptype);
}