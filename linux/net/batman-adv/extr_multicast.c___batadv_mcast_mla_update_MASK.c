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
struct net_device {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mla_lock; } ;
struct batadv_priv {TYPE_1__ mcast; struct net_device* soft_iface; } ;
struct batadv_mcast_mla_flags {int dummy; } ;

/* Variables and functions */
 struct hlist_head HLIST_HEAD_INIT ; 
 int FUNC0 (struct net_device*,struct hlist_head*,struct batadv_mcast_mla_flags*) ; 
 struct batadv_mcast_mla_flags FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct batadv_mcast_mla_flags*) ; 
 int /*<<< orphan*/  FUNC3 (struct hlist_head*) ; 
 int FUNC4 (struct net_device*,struct hlist_head*,struct batadv_mcast_mla_flags*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_priv*,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct batadv_priv *bat_priv)
{
	struct net_device *soft_iface = bat_priv->soft_iface;
	struct hlist_head mcast_list = HLIST_HEAD_INIT;
	struct batadv_mcast_mla_flags flags;
	int ret;

	flags = FUNC1(bat_priv);

	ret = FUNC4(soft_iface, &mcast_list, &flags);
	if (ret < 0)
		goto out;

	ret = FUNC0(soft_iface, &mcast_list, &flags);
	if (ret < 0)
		goto out;

	FUNC7(&bat_priv->mcast.mla_lock);
	FUNC6(bat_priv, &mcast_list);
	FUNC5(bat_priv, &mcast_list);
	FUNC2(bat_priv, &flags);
	FUNC8(&bat_priv->mcast.mla_lock);

out:
	FUNC3(&mcast_list);
}