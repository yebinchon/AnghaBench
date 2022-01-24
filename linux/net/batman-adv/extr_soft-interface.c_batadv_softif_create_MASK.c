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
struct net_device {int /*<<< orphan*/ * rtnl_link_ops; } ;
struct net {int dummy; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct net_device* FUNC0 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  batadv_link_ops ; 
 int /*<<< orphan*/  batadv_softif_init_early ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (struct net_device*) ; 

struct net_device *FUNC5(struct net *net, const char *name)
{
	struct net_device *soft_iface;
	int ret;

	soft_iface = FUNC0(sizeof(struct batadv_priv), name,
				  NET_NAME_UNKNOWN, batadv_softif_init_early);
	if (!soft_iface)
		return NULL;

	FUNC1(soft_iface, net);

	soft_iface->rtnl_link_ops = &batadv_link_ops;

	ret = FUNC4(soft_iface);
	if (ret < 0) {
		FUNC3("Unable to register the batman interface '%s': %i\n",
		       name, ret);
		FUNC2(soft_iface);
		return NULL;
	}

	return soft_iface;
}