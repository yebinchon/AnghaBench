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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KSZ9893_TAIL_TAG_OVERRIDE ; 
 int /*<<< orphan*/  KSZ_INGRESS_TAG_LEN ; 
 struct dsa_port* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct sk_buff *skb,
				    struct net_device *dev)
{
	struct dsa_port *dp = FUNC1(dev);
	struct sk_buff *nskb;
	u8 *addr;
	u8 *tag;

	nskb = FUNC3(skb, dev, KSZ_INGRESS_TAG_LEN);
	if (!nskb)
		return NULL;

	/* Tag encoding */
	tag = FUNC5(nskb, KSZ_INGRESS_TAG_LEN);
	addr = FUNC4(nskb);

	*tag = FUNC0(dp->index);

	if (FUNC2(addr))
		*tag |= KSZ9893_TAIL_TAG_OVERRIDE;

	return nskb;
}