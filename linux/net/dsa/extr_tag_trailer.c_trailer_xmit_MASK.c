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
typedef  int u8 ;
struct sk_buff {int len; scalar_t__ head; } ;
struct net_device {int dummy; } ;
struct dsa_port {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ NET_IP_ALIGN ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct dsa_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct sk_buff *skb, struct net_device *dev)
{
	struct dsa_port *dp = FUNC2(dev);
	struct sk_buff *nskb;
	int padlen;
	u8 *trailer;

	/*
	 * We have to make sure that the trailer ends up as the very
	 * last 4 bytes of the packet.  This means that we have to pad
	 * the packet to the minimum ethernet frame size, if necessary,
	 * before adding the trailer.
	 */
	padlen = 0;
	if (skb->len < 60)
		padlen = 60 - skb->len;

	nskb = FUNC0(NET_IP_ALIGN + skb->len + padlen + 4, GFP_ATOMIC);
	if (!nskb)
		return NULL;
	FUNC7(nskb, NET_IP_ALIGN);

	FUNC8(nskb);
	FUNC9(nskb, FUNC4(skb) - skb->head);
	FUNC10(nskb, FUNC11(skb) - skb->head);
	FUNC3(skb, FUNC5(nskb, skb->len));
	FUNC1(skb);

	if (padlen) {
		FUNC6(nskb, padlen);
	}

	trailer = FUNC5(nskb, 4);
	trailer[0] = 0x80;
	trailer[1] = 1 << dp->index;
	trailer[2] = 0x10;
	trailer[3] = 0x00;

	return nskb;
}