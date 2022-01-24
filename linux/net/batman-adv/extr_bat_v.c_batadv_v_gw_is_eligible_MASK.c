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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  sel_class; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_gw_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,scalar_t__,scalar_t__) ; 
 struct batadv_gw_node* FUNC2 (struct batadv_priv*,struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_gw_node*) ; 
 scalar_t__ FUNC4 (struct batadv_gw_node*,scalar_t__*) ; 

__attribute__((used)) static bool FUNC5(struct batadv_priv *bat_priv,
				    struct batadv_orig_node *curr_gw_orig,
				    struct batadv_orig_node *orig_node)
{
	struct batadv_gw_node *curr_gw, *orig_gw = NULL;
	u32 gw_throughput, orig_throughput, threshold;
	bool ret = false;

	threshold = FUNC0(&bat_priv->gw.sel_class);

	curr_gw = FUNC2(bat_priv, curr_gw_orig);
	if (!curr_gw) {
		ret = true;
		goto out;
	}

	if (FUNC4(curr_gw, &gw_throughput) < 0) {
		ret = true;
		goto out;
	}

	orig_gw = FUNC2(bat_priv, orig_node);
	if (!orig_gw)
		goto out;

	if (FUNC4(orig_gw, &orig_throughput) < 0)
		goto out;

	if (orig_throughput < gw_throughput)
		goto out;

	if ((orig_throughput - gw_throughput) < threshold)
		goto out;

	FUNC1(BATADV_DBG_BATMAN, bat_priv,
		   "Restarting gateway selection: better gateway found (throughput curr: %u, throughput new: %u)\n",
		   gw_throughput, orig_throughput);

	ret = true;
out:
	if (curr_gw)
		FUNC3(curr_gw);
	if (orig_gw)
		FUNC3(orig_gw);

	return ret;
}