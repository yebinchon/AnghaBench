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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int data; int /*<<< orphan*/  mac_len; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
 scalar_t__ VLAN_HLEN ; 
 scalar_t__ FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

int FUNC7(struct sk_buff *skb, __be16 vlan_proto, u16 vlan_tci)
{
	if (FUNC6(skb)) {
		int offset = skb->data - FUNC3(skb);
		int err;

		if (FUNC0(offset,
			      "skb_vlan_push got skb with skb->data not at mac header (offset %d)\n",
			      offset)) {
			return -EINVAL;
		}

		err = FUNC2(skb, skb->vlan_proto,
					FUNC5(skb));
		if (err)
			return err;

		skb->protocol = skb->vlan_proto;
		skb->mac_len += VLAN_HLEN;

		FUNC4(skb, skb->data + (2 * ETH_ALEN), VLAN_HLEN);
	}
	FUNC1(skb, vlan_proto, vlan_tci);
	return 0;
}