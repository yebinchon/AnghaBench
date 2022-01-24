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
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct vlan_hdr*) ; 

struct sk_buff *FUNC13(struct sk_buff *skb)
{
	struct vlan_hdr *vhdr;
	u16 vlan_tci;

	if (FUNC11(FUNC10(skb))) {
		/* vlan_tci is already set-up so leave this for another time */
		return skb;
	}

	skb = FUNC9(skb, GFP_ATOMIC);
	if (FUNC11(!skb))
		goto err_free;

	if (FUNC11(!FUNC3(skb, VLAN_HLEN)))
		goto err_free;

	vhdr = (struct vlan_hdr *)skb->data;
	vlan_tci = FUNC2(vhdr->h_vlan_TCI);
	FUNC0(skb, skb->protocol, vlan_tci);

	FUNC4(skb, VLAN_HLEN);
	FUNC12(skb, vhdr);

	skb = FUNC5(skb);
	if (FUNC11(!skb))
		goto err_free;

	FUNC7(skb);
	FUNC8(skb);
	FUNC6(skb);

	return skb;

err_free:
	FUNC1(skb);
	return NULL;
}