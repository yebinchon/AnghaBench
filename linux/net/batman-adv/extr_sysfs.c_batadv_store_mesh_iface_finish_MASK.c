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
struct net {int dummy; } ;
struct batadv_hard_iface {int if_status; TYPE_1__* soft_iface; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BATADV_IF_CLEANUP_AUTO ; 
 int BATADV_IF_I_WANT_YOU ; 
 int BATADV_IF_NOT_IN_USE ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct batadv_hard_iface*,struct net*,char*) ; 
 struct batadv_hard_iface* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_hard_iface*) ; 
 struct net* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *net_dev,
					  char ifname[IFNAMSIZ])
{
	struct net *net = FUNC5(net_dev);
	struct batadv_hard_iface *hard_iface;
	int status_tmp;
	int ret = 0;

	FUNC0();

	hard_iface = FUNC3(net_dev);
	if (!hard_iface)
		return 0;

	if (FUNC6(ifname, "none", 4) == 0)
		status_tmp = BATADV_IF_NOT_IN_USE;
	else
		status_tmp = BATADV_IF_I_WANT_YOU;

	if (hard_iface->if_status == status_tmp)
		goto out;

	if (hard_iface->soft_iface &&
	    FUNC6(hard_iface->soft_iface->name, ifname, IFNAMSIZ) == 0)
		goto out;

	if (status_tmp == BATADV_IF_NOT_IN_USE) {
		FUNC1(hard_iface,
						BATADV_IF_CLEANUP_AUTO);
		goto out;
	}

	/* if the interface already is in use */
	if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
		FUNC1(hard_iface,
						BATADV_IF_CLEANUP_AUTO);

	ret = FUNC2(hard_iface, net, ifname);
out:
	FUNC4(hard_iface);
	return ret;
}