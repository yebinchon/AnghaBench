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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct neighbour {int (* output ) (struct neighbour*,struct sk_buff*) ;} ;
struct neigh_table {int dummy; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 scalar_t__ FUNC0 (struct neighbour*) ; 
 int NEIGH_ARP_TABLE ; 
 int NEIGH_LINK_TABLE ; 
 int NEIGH_NR_TABLES ; 
 int FUNC1 (struct neighbour*) ; 
 struct neighbour* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC3 (struct neigh_table*,void const*,struct net_device*,int) ; 
 struct neighbour* FUNC4 (struct neigh_table*,void const*,struct net_device*) ; 
 int FUNC5 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 
 struct neigh_table** neigh_tables ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct neighbour*,struct sk_buff*) ; 

int FUNC13(int index, struct net_device *dev,
	       const void *addr, struct sk_buff *skb)
{
	int err = -EAFNOSUPPORT;
	if (FUNC8(index < NEIGH_NR_TABLES)) {
		struct neigh_table *tbl;
		struct neighbour *neigh;

		tbl = neigh_tables[index];
		if (!tbl)
			goto out;
		FUNC10();
		if (index == NEIGH_ARP_TABLE) {
			u32 key = *((u32 *)addr);

			neigh = FUNC2(dev, key);
		} else {
			neigh = FUNC4(tbl, addr, dev);
		}
		if (!neigh)
			neigh = FUNC3(tbl, addr, dev, false);
		err = FUNC1(neigh);
		if (FUNC0(neigh)) {
			FUNC11();
			goto out_kfree_skb;
		}
		err = neigh->output(neigh, skb);
		FUNC11();
	}
	else if (index == NEIGH_LINK_TABLE) {
		err = FUNC5(skb, dev, FUNC9(skb->protocol),
				      addr, NULL, skb->len);
		if (err < 0)
			goto out_kfree_skb;
		err = FUNC6(skb);
	}
out:
	return err;
out_kfree_skb:
	FUNC7(skb);
	goto out;
}