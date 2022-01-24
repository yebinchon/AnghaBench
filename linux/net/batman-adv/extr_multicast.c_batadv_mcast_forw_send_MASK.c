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

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 int FUNC0 (struct batadv_priv*,struct sk_buff*,unsigned short) ; 
 int FUNC1 (struct batadv_priv*,struct sk_buff*,unsigned short) ; 
 int FUNC2 (struct batadv_priv*,struct sk_buff*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

int FUNC5(struct batadv_priv *bat_priv, struct sk_buff *skb,
			   unsigned short vid)
{
	int ret;

	ret = FUNC0(bat_priv, skb, vid);
	if (ret != NET_XMIT_SUCCESS) {
		FUNC4(skb);
		return ret;
	}

	ret = FUNC1(bat_priv, skb, vid);
	if (ret != NET_XMIT_SUCCESS) {
		FUNC4(skb);
		return ret;
	}

	ret = FUNC2(bat_priv, skb, vid);
	if (ret != NET_XMIT_SUCCESS) {
		FUNC4(skb);
		return ret;
	}

	FUNC3(skb);
	return ret;
}