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
struct sk_buff {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  orig; TYPE_1__* bat_priv; } ;
struct batadv_bla_backbone_gw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bridge_loop_avoidance; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_bla_backbone_gw*) ; 
 struct batadv_bla_backbone_gw* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 

bool FUNC5(struct sk_buff *skb,
			       struct batadv_orig_node *orig_node, int hdr_size)
{
	struct batadv_bla_backbone_gw *backbone_gw;
	unsigned short vid;

	if (!FUNC0(&orig_node->bat_priv->bridge_loop_avoidance))
		return false;

	/* first, find out the vid. */
	if (!FUNC4(skb, hdr_size + ETH_HLEN))
		return false;

	vid = FUNC3(skb, hdr_size);

	/* see if this originator is a backbone gw for this VLAN */
	backbone_gw = FUNC2(orig_node->bat_priv,
						orig_node->orig, vid);
	if (!backbone_gw)
		return false;

	FUNC1(backbone_gw);
	return true;
}