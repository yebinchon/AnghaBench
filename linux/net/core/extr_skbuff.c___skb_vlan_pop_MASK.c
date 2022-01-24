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
struct vlan_hdr {int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {int data; int /*<<< orphan*/  mac_header; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  VLAN_ETH_HLEN ; 
 scalar_t__ VLAN_HLEN ; 
 scalar_t__ FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct vlan_hdr*) ; 

int FUNC12(struct sk_buff *skb, u16 *vlan_tci)
{
	struct vlan_hdr *vhdr;
	int offset = skb->data - FUNC5(skb);
	int err;

	if (FUNC0(offset,
		      "__skb_vlan_pop got skb with skb->data not at mac header (offset %d)\n",
		      offset)) {
		return -EINVAL;
	}

	err = FUNC4(skb, VLAN_ETH_HLEN);
	if (FUNC10(err))
		return err;

	FUNC7(skb, skb->data + (2 * ETH_ALEN), VLAN_HLEN);

	vhdr = (struct vlan_hdr *)(skb->data + ETH_HLEN);
	*vlan_tci = FUNC3(vhdr->h_vlan_TCI);

	FUNC2(skb->data + VLAN_HLEN, skb->data, 2 * ETH_ALEN);
	FUNC1(skb, VLAN_HLEN);

	FUNC11(skb, vhdr);
	skb->mac_header += VLAN_HLEN;

	if (FUNC6(skb) < ETH_HLEN)
		FUNC9(skb, ETH_HLEN);

	FUNC8(skb);

	return err;
}