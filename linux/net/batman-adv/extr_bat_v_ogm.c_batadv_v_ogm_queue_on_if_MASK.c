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
struct batadv_priv {int /*<<< orphan*/  aggregated_ogms; } ;
struct TYPE_2__ {int /*<<< orphan*/  aggr_list_lock; int /*<<< orphan*/  aggr_list; int /*<<< orphan*/  aggr_len; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; int /*<<< orphan*/  soft_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct batadv_hard_iface*) ; 
 struct batadv_priv* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb,
				     struct batadv_hard_iface *hard_iface)
{
	struct batadv_priv *bat_priv = FUNC5(hard_iface->soft_iface);

	if (!FUNC0(&bat_priv->aggregated_ogms)) {
		FUNC4(skb, hard_iface);
		return;
	}

	FUNC7(&hard_iface->bat_v.aggr_list_lock);
	if (!FUNC3(skb, hard_iface))
		FUNC1(hard_iface);

	hard_iface->bat_v.aggr_len += FUNC2(skb);
	FUNC6(&hard_iface->bat_v.aggr_list, skb);
	FUNC8(&hard_iface->bat_v.aggr_list_lock);
}