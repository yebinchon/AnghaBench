#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;
struct batadv_priv {TYPE_2__* algo_ops; int /*<<< orphan*/  fragmentation; } ;
struct TYPE_10__ {TYPE_3__* dev; int /*<<< orphan*/  func; int /*<<< orphan*/  type; } ;
struct batadv_hard_iface {scalar_t__ if_status; struct net_device* soft_iface; TYPE_3__* net_dev; TYPE_6__ batman_adv_ptype; int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_9__ {scalar_t__ mtu; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int (* enable ) (struct batadv_hard_iface*) ;int /*<<< orphan*/  (* enabled ) (struct batadv_hard_iface*) ;} ;
struct TYPE_8__ {TYPE_1__ iface; } ;

/* Variables and functions */
 scalar_t__ BATADV_IF_INACTIVE ; 
 scalar_t__ BATADV_IF_NOT_IN_USE ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ ETH_DATA_LEN ; 
 int /*<<< orphan*/  ETH_P_BATMAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_batman_skb_recv ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 scalar_t__ FUNC3 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC7 (struct batadv_hard_iface*,struct net_device*) ; 
 int FUNC8 () ; 
 struct net_device* FUNC9 (struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 struct net_device* FUNC12 (struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC17 (TYPE_3__*) ; 
 int FUNC18 (TYPE_3__*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct batadv_priv* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC23 (struct batadv_hard_iface*) ; 

int FUNC24(struct batadv_hard_iface *hard_iface,
				   struct net *net, const char *iface_name)
{
	struct batadv_priv *bat_priv;
	struct net_device *soft_iface, *master;
	__be16 ethertype = FUNC15(ETH_P_BATMAN);
	int max_header_len = FUNC8();
	int ret;

	if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
		goto out;

	FUNC16(&hard_iface->refcount);

	soft_iface = FUNC12(net, iface_name);

	if (!soft_iface) {
		soft_iface = FUNC9(net, iface_name);

		if (!soft_iface) {
			ret = -ENOMEM;
			goto err;
		}

		/* dev_get_by_name() increases the reference counter for us */
		FUNC13(soft_iface);
	}

	if (!FUNC10(soft_iface)) {
		FUNC21("Can't create batman mesh interface %s: already exists as regular interface\n",
		       soft_iface->name);
		ret = -EINVAL;
		goto err_dev;
	}

	/* check if the interface is enslaved in another virtual one and
	 * in that case unlink it first
	 */
	master = FUNC17(hard_iface->net_dev);
	ret = FUNC7(hard_iface, master);
	if (ret)
		goto err_dev;

	hard_iface->soft_iface = soft_iface;
	bat_priv = FUNC19(hard_iface->soft_iface);

	ret = FUNC18(hard_iface->net_dev,
					   soft_iface, NULL, NULL, NULL);
	if (ret)
		goto err_dev;

	ret = bat_priv->algo_ops->iface.enable(hard_iface);
	if (ret < 0)
		goto err_upper;

	hard_iface->if_status = BATADV_IF_INACTIVE;

	FUNC16(&hard_iface->refcount);
	hard_iface->batman_adv_ptype.type = ethertype;
	hard_iface->batman_adv_ptype.func = batadv_batman_skb_recv;
	hard_iface->batman_adv_ptype.dev = hard_iface->net_dev;
	FUNC11(&hard_iface->batman_adv_ptype);

	FUNC6(hard_iface->soft_iface, "Adding interface: %s\n",
		    hard_iface->net_dev->name);

	if (FUNC0(&bat_priv->fragmentation) &&
	    hard_iface->net_dev->mtu < ETH_DATA_LEN + max_header_len)
		FUNC6(hard_iface->soft_iface,
			    "The MTU of interface %s is too small (%i) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to %i would solve the problem.\n",
			    hard_iface->net_dev->name, hard_iface->net_dev->mtu,
			    ETH_DATA_LEN + max_header_len);

	if (!FUNC0(&bat_priv->fragmentation) &&
	    hard_iface->net_dev->mtu < ETH_DATA_LEN + max_header_len)
		FUNC6(hard_iface->soft_iface,
			    "The MTU of interface %s is too small (%i) to handle the transport of batman-adv packets. If you experience problems getting traffic through try increasing the MTU to %i.\n",
			    hard_iface->net_dev->name, hard_iface->net_dev->mtu,
			    ETH_DATA_LEN + max_header_len);

	if (FUNC3(hard_iface))
		FUNC2(hard_iface);
	else
		FUNC1(hard_iface->soft_iface,
			   "Not using interface %s (retrying later): interface not active\n",
			   hard_iface->net_dev->name);

	FUNC5(soft_iface);

	if (bat_priv->algo_ops->iface.enabled)
		bat_priv->algo_ops->iface.enabled(hard_iface);

out:
	return 0;

err_upper:
	FUNC20(hard_iface->net_dev, soft_iface);
err_dev:
	hard_iface->soft_iface = NULL;
	FUNC14(soft_iface);
err:
	FUNC4(hard_iface);
	return ret;
}