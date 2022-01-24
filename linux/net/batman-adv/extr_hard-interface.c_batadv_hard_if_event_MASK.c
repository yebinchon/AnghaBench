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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_hard_iface {int /*<<< orphan*/  num_bcasts; int /*<<< orphan*/  wifi_flags; int /*<<< orphan*/  soft_iface; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  if_status; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_mac ) (struct batadv_hard_iface*) ;} ;
struct TYPE_4__ {TYPE_1__ iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_IF_NOT_IN_USE ; 
 int /*<<< orphan*/  BATADV_NUM_BCASTS_WIRELESS ; 
#define  NETDEV_CHANGEADDR 136 
#define  NETDEV_CHANGEMTU 135 
#define  NETDEV_CHANGENAME 134 
#define  NETDEV_CHANGEUPPER 133 
#define  NETDEV_DOWN 132 
#define  NETDEV_GOING_DOWN 131 
 unsigned long NETDEV_POST_TYPE_CHANGE ; 
#define  NETDEV_PRE_TYPE_CHANGE 130 
 unsigned long NETDEV_REGISTER ; 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 int FUNC2 (unsigned long,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_hard_iface*) ; 
 struct batadv_hard_iface* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  batadv_hardif_generation ; 
 struct batadv_hard_iface* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC9 (struct batadv_hard_iface*) ; 
 struct batadv_hard_iface* FUNC10 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC16 (void*) ; 
 struct batadv_priv* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct batadv_hard_iface*) ; 

__attribute__((used)) static int FUNC19(struct notifier_block *this,
				unsigned long event, void *ptr)
{
	struct net_device *net_dev = FUNC16(ptr);
	struct batadv_hard_iface *hard_iface;
	struct batadv_hard_iface *primary_if = NULL;
	struct batadv_priv *bat_priv;

	if (FUNC12(net_dev))
		return FUNC2(event, net_dev);

	hard_iface = FUNC6(net_dev);
	if (!hard_iface && (event == NETDEV_REGISTER ||
			    event == NETDEV_POST_TYPE_CHANGE))
		hard_iface = FUNC4(net_dev);

	if (!hard_iface)
		goto out;

	switch (event) {
	case NETDEV_UP:
		FUNC3(hard_iface);
		break;
	case NETDEV_GOING_DOWN:
	case NETDEV_DOWN:
		FUNC5(hard_iface);
		break;
	case NETDEV_UNREGISTER:
	case NETDEV_PRE_TYPE_CHANGE:
		FUNC15(&hard_iface->list);
		batadv_hardif_generation++;

		FUNC8(hard_iface);
		break;
	case NETDEV_CHANGEMTU:
		if (hard_iface->soft_iface)
			FUNC13(hard_iface->soft_iface);
		break;
	case NETDEV_CHANGEADDR:
		if (hard_iface->if_status == BATADV_IF_NOT_IN_USE)
			goto hardif_put;

		FUNC0(hard_iface->net_dev);

		bat_priv = FUNC17(hard_iface->soft_iface);
		bat_priv->algo_ops->iface.update_mac(hard_iface);

		primary_if = FUNC10(bat_priv);
		if (!primary_if)
			goto hardif_put;

		if (hard_iface == primary_if)
			FUNC11(bat_priv, NULL);
		break;
	case NETDEV_CHANGEUPPER:
		hard_iface->wifi_flags = FUNC14(net_dev);
		if (FUNC9(hard_iface))
			hard_iface->num_bcasts = BATADV_NUM_BCASTS_WIRELESS;
		break;
	case NETDEV_CHANGENAME:
		FUNC1(hard_iface);
		break;
	default:
		break;
	}

hardif_put:
	FUNC7(hard_iface);
out:
	if (primary_if)
		FUNC7(primary_if);
	return NOTIFY_DONE;
}