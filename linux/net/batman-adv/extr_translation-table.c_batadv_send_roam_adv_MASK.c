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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  tvlv_roam ;
struct batadv_tvlv_roam_adv {int /*<<< orphan*/  vid; int /*<<< orphan*/  client; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_TT_ROAM_ADV_TX ; 
 int /*<<< orphan*/  BATADV_DBG_TT ; 
 int /*<<< orphan*/  BATADV_TVLV_ROAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC3 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct batadv_tvlv_roam_adv*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct batadv_priv *bat_priv, u8 *client,
				 unsigned short vid,
				 struct batadv_orig_node *orig_node)
{
	struct batadv_hard_iface *primary_if;
	struct batadv_tvlv_roam_adv tvlv_roam;

	primary_if = FUNC3(bat_priv);
	if (!primary_if)
		goto out;

	/* before going on we have to check whether the client has
	 * already roamed to us too many times
	 */
	if (!FUNC5(bat_priv, client))
		goto out;

	FUNC0(BATADV_DBG_TT, bat_priv,
		   "Sending ROAMING_ADV to %pM (client %pM, vid: %d)\n",
		   orig_node->orig, client, FUNC4(vid));

	FUNC2(bat_priv, BATADV_CNT_TT_ROAM_ADV_TX);

	FUNC8(tvlv_roam.client, client, sizeof(tvlv_roam.client));
	tvlv_roam.vid = FUNC7(vid);

	FUNC6(bat_priv, primary_if->net_dev->dev_addr,
				 orig_node->orig, BATADV_TVLV_ROAM, 1,
				 &tvlv_roam, sizeof(tvlv_roam));

out:
	if (primary_if)
		FUNC1(primary_if);
}