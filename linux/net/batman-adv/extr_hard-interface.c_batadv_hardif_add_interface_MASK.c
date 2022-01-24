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
struct TYPE_2__ {int /*<<< orphan*/  ogm_buff_mutex; } ;
struct batadv_hard_iface {int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; struct net_device* net_dev; int /*<<< orphan*/  num_bcasts; int /*<<< orphan*/  wifi_flags; int /*<<< orphan*/  neigh_list_lock; TYPE_1__ bat_iv; int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  if_status; int /*<<< orphan*/ * soft_iface; int /*<<< orphan*/  hardif_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BATADV_IF_NOT_IN_USE ; 
 int /*<<< orphan*/  BATADV_NUM_BCASTS_DEFAULT ; 
 int /*<<< orphan*/  BATADV_NUM_BCASTS_WIRELESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  batadv_hardif_generation ; 
 int /*<<< orphan*/  batadv_hardif_list ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct batadv_hard_iface*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct batadv_hard_iface* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct batadv_hard_iface *
FUNC19(struct net_device *net_dev)
{
	struct batadv_hard_iface *hard_iface;
	int ret;

	FUNC0();

	if (!FUNC5(net_dev))
		goto out;

	FUNC10(net_dev);

	hard_iface = FUNC15(sizeof(*hard_iface), GFP_ATOMIC);
	if (!hard_iface)
		goto release_dev;

	ret = FUNC7(&hard_iface->hardif_obj, net_dev);
	if (ret)
		goto free_if;

	hard_iface->net_dev = net_dev;
	hard_iface->soft_iface = NULL;
	hard_iface->if_status = BATADV_IF_NOT_IN_USE;

	FUNC4(hard_iface);

	FUNC2(&hard_iface->list);
	FUNC1(&hard_iface->neigh_list);

	FUNC17(&hard_iface->bat_iv.ogm_buff_mutex);
	FUNC18(&hard_iface->neigh_list_lock);
	FUNC14(&hard_iface->refcount);

	hard_iface->num_bcasts = BATADV_NUM_BCASTS_DEFAULT;
	hard_iface->wifi_flags = FUNC9(net_dev);
	if (FUNC6(hard_iface))
		hard_iface->num_bcasts = BATADV_NUM_BCASTS_WIRELESS;

	FUNC8(hard_iface);

	FUNC3(hard_iface->net_dev);
	FUNC13(&hard_iface->refcount);
	FUNC16(&hard_iface->list, &batadv_hardif_list);
	batadv_hardif_generation++;

	return hard_iface;

free_if:
	FUNC12(hard_iface);
release_dev:
	FUNC11(net_dev);
out:
	return NULL;
}