#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct batadv_unicast_packet {scalar_t__ ttvn; int /*<<< orphan*/  dest; } ;
struct TYPE_4__ {int /*<<< orphan*/  vn; } ;
struct batadv_priv {TYPE_2__ tt; } ;
struct batadv_orig_node {int /*<<< orphan*/  last_ttvn; scalar_t__* orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct TYPE_3__ {scalar_t__* dev_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 scalar_t__ FUNC3 (struct batadv_priv*,scalar_t__*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_orig_node*) ; 
 struct batadv_hard_iface* FUNC5 (struct batadv_priv*) ; 
 struct batadv_orig_node* FUNC6 (struct batadv_priv*,int /*<<< orphan*/ *,scalar_t__*,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct batadv_unicast_packet*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct batadv_unicast_packet*,int) ; 

__attribute__((used)) static bool
FUNC10(struct batadv_priv *bat_priv, struct sk_buff *skb,
			      struct batadv_unicast_packet *unicast_packet,
			      u8 *dst_addr, unsigned short vid)
{
	struct batadv_orig_node *orig_node = NULL;
	struct batadv_hard_iface *primary_if = NULL;
	bool ret = false;
	u8 *orig_addr, orig_ttvn;

	if (FUNC3(bat_priv, dst_addr, vid)) {
		primary_if = FUNC5(bat_priv);
		if (!primary_if)
			goto out;
		orig_addr = primary_if->net_dev->dev_addr;
		orig_ttvn = (u8)FUNC0(&bat_priv->tt.vn);
	} else {
		orig_node = FUNC6(bat_priv, NULL, dst_addr,
						     vid);
		if (!orig_node)
			goto out;

		if (FUNC1(orig_node->orig, unicast_packet->dest))
			goto out;

		orig_addr = orig_node->orig;
		orig_ttvn = (u8)FUNC0(&orig_node->last_ttvn);
	}

	/* update the packet header */
	FUNC8(skb, unicast_packet, sizeof(*unicast_packet));
	FUNC7(unicast_packet->dest, orig_addr);
	unicast_packet->ttvn = orig_ttvn;
	FUNC9(skb, unicast_packet, sizeof(*unicast_packet));

	ret = true;
out:
	if (primary_if)
		FUNC2(primary_if);
	if (orig_node)
		FUNC4(orig_node);

	return ret;
}