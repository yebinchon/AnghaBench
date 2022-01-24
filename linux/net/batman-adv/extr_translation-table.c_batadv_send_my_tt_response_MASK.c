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
typedef  float u8 ;
typedef  scalar_t__ u16 ;
struct batadv_tvlv_tt_data {float ttvn; int flags; } ;
struct batadv_tvlv_tt_change {int dummy; } ;
struct TYPE_4__ {int last_changeset_len; int /*<<< orphan*/  commit_lock; int /*<<< orphan*/  last_changeset_lock; int /*<<< orphan*/  local_hash; int /*<<< orphan*/  vn; int /*<<< orphan*/  last_changeset; } ;
struct batadv_priv {TYPE_2__ tt; } ;
struct batadv_orig_node {float* orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
typedef  int s32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_TT_RESPONSE_TX ; 
 int /*<<< orphan*/  BATADV_DBG_TT ; 
 int BATADV_TT_FULL_TABLE ; 
 int BATADV_TT_RESPONSE ; 
 int /*<<< orphan*/  BATADV_TVLV_TT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,float*,float,float) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 struct batadv_orig_node* FUNC4 (struct batadv_priv*,float*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_orig_node*) ; 
 struct batadv_hard_iface* FUNC6 (struct batadv_priv*) ; 
 int /*<<< orphan*/  batadv_tt_local_valid ; 
 scalar_t__ FUNC7 (struct batadv_priv*,struct batadv_tvlv_tt_data**,struct batadv_tvlv_tt_change**,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_priv*,int /*<<< orphan*/ ,struct batadv_tvlv_tt_change*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct batadv_priv*,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ,int,struct batadv_tvlv_tt_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct batadv_tvlv_tt_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct batadv_tvlv_tt_change*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC14(struct batadv_priv *bat_priv,
				       struct batadv_tvlv_tt_data *tt_data,
				       u8 *req_src)
{
	struct batadv_tvlv_tt_data *tvlv_tt_data = NULL;
	struct batadv_hard_iface *primary_if = NULL;
	struct batadv_tvlv_tt_change *tt_change;
	struct batadv_orig_node *orig_node;
	u8 my_ttvn, req_ttvn;
	u16 tvlv_len;
	bool full_table;
	s32 tt_len;

	FUNC1(BATADV_DBG_TT, bat_priv,
		   "Received TT_REQUEST from %pM for ttvn: %u (me) [%c]\n",
		   req_src, tt_data->ttvn,
		   ((tt_data->flags & BATADV_TT_FULL_TABLE) ? 'F' : '.'));

	FUNC12(&bat_priv->tt.commit_lock);

	my_ttvn = (u8)FUNC0(&bat_priv->tt.vn);
	req_ttvn = tt_data->ttvn;

	orig_node = FUNC4(bat_priv, req_src);
	if (!orig_node)
		goto out;

	primary_if = FUNC6(bat_priv);
	if (!primary_if)
		goto out;

	/* If the full table has been explicitly requested or the gap
	 * is too big send the whole local translation table
	 */
	if (tt_data->flags & BATADV_TT_FULL_TABLE || my_ttvn != req_ttvn ||
	    !bat_priv->tt.last_changeset)
		full_table = true;
	else
		full_table = false;

	/* TT fragmentation hasn't been implemented yet, so send as many
	 * TT entries fit a single packet as possible only
	 */
	if (!full_table) {
		FUNC12(&bat_priv->tt.last_changeset_lock);

		tt_len = bat_priv->tt.last_changeset_len;
		tvlv_len = FUNC7(bat_priv,
							     &tvlv_tt_data,
							     &tt_change,
							     &tt_len);
		if (!tt_len || !tvlv_len)
			goto unlock;

		/* Copy the last orig_node's OGM buffer */
		FUNC11(tt_change, bat_priv->tt.last_changeset,
		       bat_priv->tt.last_changeset_len);
		FUNC13(&bat_priv->tt.last_changeset_lock);
	} else {
		req_ttvn = (u8)FUNC0(&bat_priv->tt.vn);

		/* allocate the tvlv, put the tt_data and all the tt_vlan_data
		 * in the initial part
		 */
		tt_len = -1;
		tvlv_len = FUNC7(bat_priv,
							     &tvlv_tt_data,
							     &tt_change,
							     &tt_len);
		if (!tt_len || !tvlv_len)
			goto out;

		/* fill the rest of the tvlv with the real TT entries */
		FUNC8(bat_priv, bat_priv->tt.local_hash,
					tt_change, tt_len,
					batadv_tt_local_valid, NULL);
	}

	tvlv_tt_data->flags = BATADV_TT_RESPONSE;
	tvlv_tt_data->ttvn = req_ttvn;

	if (full_table)
		tvlv_tt_data->flags |= BATADV_TT_FULL_TABLE;

	FUNC1(BATADV_DBG_TT, bat_priv,
		   "Sending TT_RESPONSE to %pM [%c] (ttvn: %u)\n",
		   orig_node->orig, full_table ? 'F' : '.', req_ttvn);

	FUNC3(bat_priv, BATADV_CNT_TT_RESPONSE_TX);

	FUNC9(bat_priv, primary_if->net_dev->dev_addr,
				 req_src, BATADV_TVLV_TT, 1, tvlv_tt_data,
				 tvlv_len);

	goto out;

unlock:
	FUNC13(&bat_priv->tt.last_changeset_lock);
out:
	FUNC13(&bat_priv->tt.commit_lock);
	if (orig_node)
		FUNC5(orig_node);
	if (primary_if)
		FUNC2(primary_if);
	FUNC10(tvlv_tt_data);
	/* The packet was for this host, so it doesn't need to be re-routed */
	return true;
}