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
typedef  int u16 ;
struct batadv_tvlv_roam_adv {int /*<<< orphan*/  vid; int /*<<< orphan*/  client; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  last_ttvn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_TT_ROAM_ADV_RX ; 
 int /*<<< orphan*/  BATADV_DBG_TT ; 
 int /*<<< orphan*/  BATADV_TT_CLIENT_ROAM ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 struct batadv_orig_node* FUNC4 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,struct batadv_orig_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct batadv_priv *bat_priv,
					       u8 *src, u8 *dst,
					       void *tvlv_value,
					       u16 tvlv_value_len)
{
	struct batadv_tvlv_roam_adv *roaming_adv;
	struct batadv_orig_node *orig_node = NULL;

	/* If this node is not the intended recipient of the
	 * roaming advertisement the packet is forwarded
	 * (the tvlv API will re-route the packet).
	 */
	if (!FUNC3(bat_priv, dst))
		return NET_RX_DROP;

	if (tvlv_value_len < sizeof(*roaming_adv))
		goto out;

	orig_node = FUNC4(bat_priv, src);
	if (!orig_node)
		goto out;

	FUNC2(bat_priv, BATADV_CNT_TT_ROAM_ADV_RX);
	roaming_adv = (struct batadv_tvlv_roam_adv *)tvlv_value;

	FUNC1(BATADV_DBG_TT, bat_priv,
		   "Received ROAMING_ADV from %pM (client %pM)\n",
		   src, roaming_adv->client);

	FUNC6(bat_priv, orig_node, roaming_adv->client,
			     FUNC7(roaming_adv->vid), BATADV_TT_CLIENT_ROAM,
			     FUNC0(&orig_node->last_ttvn) + 1);

out:
	if (orig_node)
		FUNC5(orig_node);
	return NET_RX_SUCCESS;
}