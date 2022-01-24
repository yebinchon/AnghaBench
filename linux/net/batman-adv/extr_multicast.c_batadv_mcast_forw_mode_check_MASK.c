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
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
struct batadv_priv {int /*<<< orphan*/  multicast_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int EINVAL ; 
#define  ETH_P_IP 129 
#define  ETH_P_IPV6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct batadv_priv*,struct sk_buff*,int*,int*) ; 
 int FUNC3 (struct batadv_priv*,struct sk_buff*,int*,int*) ; 
 struct ethhdr* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct batadv_priv *bat_priv,
					struct sk_buff *skb,
					bool *is_unsnoopable,
					int *is_routable)
{
	struct ethhdr *ethhdr = FUNC4(skb);

	if (!FUNC1(&bat_priv->multicast_mode))
		return -EINVAL;

	switch (FUNC5(ethhdr->h_proto)) {
	case ETH_P_IP:
		return FUNC2(bat_priv, skb,
							 is_unsnoopable,
							 is_routable);
	case ETH_P_IPV6:
		if (!FUNC0(CONFIG_IPV6))
			return -EINVAL;

		return FUNC3(bat_priv, skb,
							 is_unsnoopable,
							 is_routable);
	default:
		return -EINVAL;
	}
}