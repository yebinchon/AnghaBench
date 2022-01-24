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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KSZ9477_INGRESS_TAG_LEN ; 
 int /*<<< orphan*/  KSZ9477_TAIL_TAG_OVERRIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dsa_port* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct sk_buff *skb,
				    struct net_device *dev)
{
	struct dsa_port *dp = FUNC2(dev);
	struct sk_buff *nskb;
	u16 *tag;
	u8 *addr;

	nskb = FUNC4(skb, dev, KSZ9477_INGRESS_TAG_LEN);
	if (!nskb)
		return NULL;

	/* Tag encoding */
	tag = FUNC6(nskb, KSZ9477_INGRESS_TAG_LEN);
	addr = FUNC5(nskb);

	*tag = FUNC0(dp->index);

	if (FUNC3(addr))
		*tag |= KSZ9477_TAIL_TAG_OVERRIDE;

	*tag = FUNC1(*tag);

	return nskb;
}