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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_port {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  KSZ8795_INGRESS_TAG_LEN ; 
 int KSZ8795_TAIL_TAG_OVERRIDE ; 
 struct dsa_port* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 
 int* FUNC3 (struct sk_buff*) ; 
 int* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	struct dsa_port *dp = FUNC0(dev);
	struct sk_buff *nskb;
	u8 *tag;
	u8 *addr;

	nskb = FUNC2(skb, dev, KSZ8795_INGRESS_TAG_LEN);
	if (!nskb)
		return NULL;

	/* Tag encoding */
	tag = FUNC4(nskb, KSZ8795_INGRESS_TAG_LEN);
	addr = FUNC3(nskb);

	*tag = 1 << dp->index;
	if (FUNC1(addr))
		*tag |= KSZ8795_TAIL_TAG_OVERRIDE;

	return nskb;
}