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
struct netlink_callback {long* args; int /*<<< orphan*/  skb; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;
struct TYPE_2__ {int portid; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,int,struct netlink_callback*,struct batadv_priv*,long*,long*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 int FUNC3 (struct netlink_callback*,struct batadv_hard_iface**) ; 
 struct batadv_priv* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct sk_buff *msg, struct netlink_callback *cb)
{
	struct batadv_hard_iface *primary_if = NULL;
	int portid = FUNC0(cb->skb).portid;
	struct batadv_priv *bat_priv;
	long *bucket = &cb->args[0];
	long *idx = &cb->args[1];
	int ret;

	ret = FUNC3(cb, &primary_if);
	if (ret)
		return ret;

	bat_priv = FUNC4(primary_if->soft_iface);
	ret = FUNC1(msg, portid, cb, bat_priv, bucket, idx);

	FUNC2(primary_if);
	return ret;
}