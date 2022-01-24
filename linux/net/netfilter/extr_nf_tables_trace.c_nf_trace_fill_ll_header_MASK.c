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
typedef  int /*<<< orphan*/  veth ;
struct vlan_ethhdr {int /*<<< orphan*/  h_vlan_encapsulated_proto; int /*<<< orphan*/  h_vlan_TCI; int /*<<< orphan*/  h_vlan_proto; } ;
struct sk_buff {int data; int /*<<< orphan*/  protocol; int /*<<< orphan*/  vlan_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  NFTA_TRACE_LL_HEADER ; 
 int NFT_TRACETYPE_LL_HSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct vlan_ethhdr*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*,int,struct vlan_ethhdr*,int) ; 
 int FUNC4 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *nlskb,
				   const struct sk_buff *skb)
{
	struct vlan_ethhdr veth;
	int off;

	FUNC0(sizeof(veth) > NFT_TRACETYPE_LL_HSIZE);

	off = FUNC4(skb) - skb->data;
	if (off != -ETH_HLEN)
		return -1;

	if (FUNC3(skb, off, &veth, ETH_HLEN))
		return -1;

	veth.h_vlan_proto = skb->vlan_proto;
	veth.h_vlan_TCI = FUNC1(FUNC5(skb));
	veth.h_vlan_encapsulated_proto = skb->protocol;

	return FUNC2(nlskb, NFTA_TRACE_LL_HEADER, sizeof(veth), &veth);
}