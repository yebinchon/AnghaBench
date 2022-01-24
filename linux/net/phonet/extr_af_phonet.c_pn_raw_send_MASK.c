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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  pkt_type; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_PHONET_HEADER ; 
 int /*<<< orphan*/  PACKET_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(const void *data, int len, struct net_device *dev,
			u16 dst, u16 src, u8 res)
{
	struct sk_buff *skb = FUNC1(MAX_PHONET_HEADER + len, GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	if (FUNC3(FUNC2(dev), FUNC4(dst)) == 0)
		skb->pkt_type = PACKET_LOOPBACK;

	FUNC7(skb, MAX_PHONET_HEADER);
	FUNC0(skb, len);
	FUNC6(skb, data, len);
	return FUNC5(skb, dev, dst, src, res, 1);
}