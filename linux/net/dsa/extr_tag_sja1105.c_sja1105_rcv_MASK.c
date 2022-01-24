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
typedef  scalar_t__ u16 ;
struct vlan_ethhdr {int* h_dest; int /*<<< orphan*/  h_vlan_TCI; int /*<<< orphan*/  h_vlan_proto; } ;
struct sk_buff {int offload_fwd_mark; int /*<<< orphan*/  dev; scalar_t__ priority; } ;
struct sja1105_meta {int source_port; int switch_id; int /*<<< orphan*/  member_0; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETH_P_SJA1105 ; 
 scalar_t__ VLAN_PRIO_MASK ; 
 scalar_t__ VLAN_PRIO_SHIFT ; 
 scalar_t__ VLAN_VID_MASK ; 
 struct sk_buff* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sja1105_meta*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,struct sja1105_meta*,int,int) ; 
 struct vlan_ethhdr* FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC11(struct sk_buff *skb,
				   struct net_device *netdev,
				   struct packet_type *pt)
{
	struct sja1105_meta meta = {0};
	int source_port, switch_id;
	struct vlan_ethhdr *hdr;
	u16 tpid, vid, tci;
	bool is_link_local;
	bool is_tagged;
	bool is_meta;

	hdr = FUNC10(skb);
	tpid = FUNC5(hdr->h_vlan_proto);
	is_tagged = (tpid == ETH_P_SJA1105);
	is_link_local = FUNC6(skb);
	is_meta = FUNC7(skb);

	skb->offload_fwd_mark = 1;

	if (is_tagged) {
		/* Normal traffic path. */
		tci = FUNC5(hdr->h_vlan_TCI);
		vid = tci & VLAN_VID_MASK;
		source_port = FUNC1(vid);
		switch_id = FUNC2(vid);
		skb->priority = (tci & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
	} else if (is_link_local) {
		/* Management traffic path. Switch embeds the switch ID and
		 * port ID into bytes of the destination MAC, courtesy of
		 * the incl_srcpt options.
		 */
		source_port = hdr->h_dest[3];
		switch_id = hdr->h_dest[4];
		/* Clear the DMAC bytes that were mangled by the switch */
		hdr->h_dest[3] = 0;
		hdr->h_dest[4] = 0;
	} else if (is_meta) {
		FUNC8(skb, &meta);
		source_port = meta.source_port;
		switch_id = meta.switch_id;
	} else {
		return NULL;
	}

	skb->dev = FUNC3(netdev, switch_id, source_port);
	if (!skb->dev) {
		FUNC4(netdev, "Couldn't decode source port\n");
		return NULL;
	}

	/* Delete/overwrite fake VLAN header, DSA expects to not find
	 * it there, see dsa_switch_rcv: skb_push(skb, ETH_HLEN).
	 */
	if (is_tagged)
		skb = FUNC0(skb);

	return FUNC9(skb, &meta, is_link_local,
					      is_meta);
}