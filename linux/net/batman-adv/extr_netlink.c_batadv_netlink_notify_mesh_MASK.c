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
struct batadv_priv {int /*<<< orphan*/  soft_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CMD_SET_MESH ; 
 int /*<<< orphan*/  BATADV_NL_MCGRP_CONFIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 int FUNC0 (struct sk_buff*,struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct batadv_priv *bat_priv)
{
	struct sk_buff *msg;
	int ret;

	msg = FUNC4(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	ret = FUNC0(msg, bat_priv, BATADV_CMD_SET_MESH,
				       0, 0, 0);
	if (ret < 0) {
		FUNC3(msg);
		return ret;
	}

	FUNC2(&batadv_netlink_family,
				FUNC1(bat_priv->soft_iface), msg, 0,
				BATADV_NL_MCGRP_CONFIG, GFP_KERNEL);

	return 0;
}