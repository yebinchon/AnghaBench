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
struct batadv_tp_vars {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  orig; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TP_METER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct batadv_priv*,char*,...) ; 
 struct batadv_orig_node* FUNC1 (struct batadv_priv*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_orig_node*) ; 
 struct batadv_tp_vars* FUNC3 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_tp_vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_tp_vars*) ; 

void FUNC6(struct batadv_priv *bat_priv, const u8 *dst,
		    u8 return_value)
{
	struct batadv_orig_node *orig_node;
	struct batadv_tp_vars *tp_vars;

	FUNC0(BATADV_DBG_TP_METER, bat_priv,
		   "Meter: stopping test towards %pM\n", dst);

	orig_node = FUNC1(bat_priv, dst);
	if (!orig_node)
		return;

	tp_vars = FUNC3(bat_priv, orig_node->orig);
	if (!tp_vars) {
		FUNC0(BATADV_DBG_TP_METER, bat_priv,
			   "Meter: trying to interrupt an already over connection\n");
		goto out;
	}

	FUNC4(tp_vars, return_value);
	FUNC5(tp_vars);
out:
	FUNC2(orig_node);
}