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
struct vport {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  network_header; int /*<<< orphan*/  inner_network_header; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data; int /*<<< orphan*/  inner_protocol; } ;
struct ovs_frag_data {int vlan_tci; int /*<<< orphan*/  mac_proto; int /*<<< orphan*/  network_offset; int /*<<< orphan*/  l2_len; int /*<<< orphan*/  l2_data; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  inner_protocol; int /*<<< orphan*/  cb; int /*<<< orphan*/  dst; struct vport* vport; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (struct sk_buff*) ; 
 int VLAN_CFI_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ovs_frag_data_storage ; 
 int /*<<< orphan*/  FUNC7 (struct vport*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ovs_frag_data* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct ovs_frag_data *data = FUNC14(&ovs_frag_data_storage);
	struct vport *vport = data->vport;

	if (FUNC8(skb, data->l2_len) < 0) {
		FUNC5(skb);
		return -ENOMEM;
	}

	FUNC1(skb, data->dst);
	*FUNC0(skb) = data->cb;
	skb->inner_protocol = data->inner_protocol;
	if (data->vlan_tci & VLAN_CFI_MASK)
		FUNC3(skb, data->vlan_proto, data->vlan_tci & ~VLAN_CFI_MASK);
	else
		FUNC2(skb);

	/* Reconstruct the MAC header.  */
	FUNC10(skb, data->l2_len);
	FUNC6(skb->data, &data->l2_data, data->l2_len);
	FUNC9(skb, skb->data, data->l2_len);
	FUNC11(skb);

	if (FUNC4(skb->protocol)) {
		skb->inner_network_header = skb->network_header;
		FUNC13(skb, data->network_offset);
		FUNC12(skb);
	}

	FUNC7(vport, skb, data->mac_proto);
	return 0;
}