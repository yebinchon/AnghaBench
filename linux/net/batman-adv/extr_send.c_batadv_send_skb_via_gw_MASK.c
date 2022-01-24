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
struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_P_DATA ; 
 int /*<<< orphan*/  BATADV_UNICAST_4ADDR ; 
 struct batadv_orig_node* FUNC0 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_orig_node*) ; 
 int FUNC2 (struct batadv_priv*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct batadv_orig_node*,unsigned short) ; 

int FUNC3(struct batadv_priv *bat_priv, struct sk_buff *skb,
			   unsigned short vid)
{
	struct batadv_orig_node *orig_node;
	int ret;

	orig_node = FUNC0(bat_priv);
	ret = FUNC2(bat_priv, skb, BATADV_UNICAST_4ADDR,
				      BATADV_P_DATA, orig_node, vid);

	if (orig_node)
		FUNC1(orig_node);

	return ret;
}