#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net {int dummy; } ;
struct batadv_hard_iface {TYPE_2__* net_dev; int /*<<< orphan*/  debug_dir; } ;
struct TYPE_4__ {int mode; int /*<<< orphan*/  name; } ;
struct batadv_debuginfo {int /*<<< orphan*/  fops; TYPE_1__ attr; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int S_IFREG ; 
 int /*<<< orphan*/  batadv_debugfs ; 
 struct batadv_debuginfo** batadv_hardif_debuginfos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (TYPE_2__*) ; 
 struct net init_net ; 

void FUNC3(struct batadv_hard_iface *hard_iface)
{
	struct net *net = FUNC2(hard_iface->net_dev);
	struct batadv_debuginfo **bat_debug;

	if (net != &init_net)
		return;

	hard_iface->debug_dir = FUNC0(hard_iface->net_dev->name,
						   batadv_debugfs);

	for (bat_debug = batadv_hardif_debuginfos; *bat_debug; ++bat_debug)
		FUNC1(((*bat_debug)->attr).name,
				    S_IFREG | ((*bat_debug)->attr).mode,
				    hard_iface->debug_dir, hard_iface->net_dev,
				    &(*bat_debug)->fops);
}