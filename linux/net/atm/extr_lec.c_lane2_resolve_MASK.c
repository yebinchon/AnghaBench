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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct lec_priv {int /*<<< orphan*/  lec_arp_lock; } ;
struct lec_arp_table {int /*<<< orphan*/  sizeoftlvs; int /*<<< orphan*/  tlvs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l_arp_xmt ; 
 struct lec_arp_table* FUNC2 (struct lec_priv*,int /*<<< orphan*/  const*) ; 
 struct lec_priv* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct lec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, const u8 *dst_mac, int force,
			 u8 **tlvs, u32 *sizeoftlvs)
{
	unsigned long flags;
	struct lec_priv *priv = FUNC3(dev);
	struct lec_arp_table *table;
	struct sk_buff *skb;
	int retval;

	if (force == 0) {
		FUNC6(&priv->lec_arp_lock, flags);
		table = FUNC2(priv, dst_mac);
		FUNC7(&priv->lec_arp_lock, flags);
		if (table == NULL)
			return -1;

		*tlvs = FUNC1(table->tlvs, table->sizeoftlvs, GFP_ATOMIC);
		if (*tlvs == NULL)
			return -1;

		*sizeoftlvs = table->sizeoftlvs;

		return 0;
	}

	if (sizeoftlvs == NULL)
		retval = FUNC4(priv, l_arp_xmt, dst_mac, NULL, NULL);

	else {
		skb = FUNC0(*sizeoftlvs, GFP_ATOMIC);
		if (skb == NULL)
			return -1;
		skb->len = *sizeoftlvs;
		FUNC5(skb, *tlvs, *sizeoftlvs);
		retval = FUNC4(priv, l_arp_xmt, dst_mac, NULL, skb);
	}
	return retval;
}