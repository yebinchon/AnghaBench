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
struct vport {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  inner_protocol; int /*<<< orphan*/  _skb_refdst; } ;
struct ovs_frag_data {int vlan_tci; unsigned int l2_len; int /*<<< orphan*/  l2_data; int /*<<< orphan*/  mac_proto; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  network_offset; int /*<<< orphan*/  inner_protocol; int /*<<< orphan*/  cb; struct vport* vport; int /*<<< orphan*/  dst; } ;
struct inet_skb_parm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC1 (struct sk_buff*) ; 
 int VLAN_CFI_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ovs_frag_data_storage ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 struct ovs_frag_data* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct vport *vport, struct sk_buff *skb,
			 u16 orig_network_offset, u8 mac_proto)
{
	unsigned int hlen = FUNC4(skb);
	struct ovs_frag_data *data;

	data = FUNC8(&ovs_frag_data_storage);
	data->dst = skb->_skb_refdst;
	data->vport = vport;
	data->cb = *FUNC1(skb);
	data->inner_protocol = skb->inner_protocol;
	data->network_offset = orig_network_offset;
	if (FUNC7(skb))
		data->vlan_tci = FUNC6(skb) | VLAN_CFI_MASK;
	else
		data->vlan_tci = 0;
	data->vlan_proto = skb->vlan_proto;
	data->mac_proto = mac_proto;
	data->l2_len = hlen;
	FUNC2(&data->l2_data, skb->data, hlen);

	FUNC3(FUNC0(skb), 0, sizeof(struct inet_skb_parm));
	FUNC5(skb, hlen);
}