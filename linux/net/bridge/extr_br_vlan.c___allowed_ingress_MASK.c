#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ vlan_proto; scalar_t__ len; scalar_t__ vlan_tci; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int /*<<< orphan*/  stats; } ;
struct net_bridge {scalar_t__ vlan_proto; } ;
struct br_vlan_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; } ;
struct TYPE_2__ {int vlan_filtered; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_VLAN_STATS_ENABLED ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct net_bridge_vlan_group*) ; 
 scalar_t__ FUNC3 (struct net_bridge const*,int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan* FUNC4 (struct net_bridge_vlan_group*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct sk_buff* FUNC14 (struct sk_buff*) ; 
 struct br_vlan_stats* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 struct sk_buff* FUNC19 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC20(const struct net_bridge *br,
			      struct net_bridge_vlan_group *vg,
			      struct sk_buff *skb, u16 *vid)
{
	struct br_vlan_stats *stats;
	struct net_bridge_vlan *v;
	bool tagged;

	FUNC0(skb)->vlan_filtered = true;
	/* If vlan tx offload is disabled on bridge device and frame was
	 * sent from vlan device on the bridge device, it does not have
	 * HW accelerated vlan tag.
	 */
	if (FUNC18(!FUNC13(skb) &&
		     skb->protocol == br->vlan_proto)) {
		skb = FUNC14(skb);
		if (FUNC18(!skb))
			return false;
	}

	if (!FUNC5(skb, vid)) {
		/* Tagged frame */
		if (skb->vlan_proto != br->vlan_proto) {
			/* Protocol-mismatch, empty out vlan_tci for new tag */
			FUNC10(skb, ETH_HLEN);
			skb = FUNC19(skb, skb->vlan_proto,
							FUNC12(skb));
			if (FUNC18(!skb))
				return false;

			FUNC9(skb, ETH_HLEN);
			FUNC11(skb);
			*vid = 0;
			tagged = false;
		} else {
			tagged = true;
		}
	} else {
		/* Untagged frame */
		tagged = false;
	}

	if (!*vid) {
		u16 pvid = FUNC2(vg);

		/* Frame had a tag with VID 0 or did not have a tag.
		 * See if pvid is set on this port.  That tells us which
		 * vlan untagged or priority-tagged traffic belongs to.
		 */
		if (!pvid)
			goto drop;

		/* PVID is set on this port.  Any untagged or priority-tagged
		 * ingress frame is considered to belong to this vlan.
		 */
		*vid = pvid;
		if (FUNC8(!tagged))
			/* Untagged Frame. */
			FUNC1(skb, br->vlan_proto, pvid);
		else
			/* Priority-tagged Frame.
			 * At this point, we know that skb->vlan_tci VID
			 * field was 0.
			 * We update only VID field and preserve PCP field.
			 */
			skb->vlan_tci |= pvid;

		/* if stats are disabled we can avoid the lookup */
		if (!FUNC3(br, BROPT_VLAN_STATS_ENABLED))
			return true;
	}
	v = FUNC4(vg, *vid);
	if (!v || !FUNC6(v))
		goto drop;

	if (FUNC3(br, BROPT_VLAN_STATS_ENABLED)) {
		stats = FUNC15(v->stats);
		FUNC16(&stats->syncp);
		stats->rx_bytes += skb->len;
		stats->rx_packets++;
		FUNC17(&stats->syncp);
	}

	return true;

drop:
	FUNC7(skb);
	return false;
}