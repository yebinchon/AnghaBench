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
struct net_device {int /*<<< orphan*/  name; } ;
struct cflayer {int /*<<< orphan*/  transmit; int /*<<< orphan*/  name; } ;
struct cfcnfg {int dummy; } ;
struct caif_device_entry_list {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct caif_device_entry {struct cflayer layer; int /*<<< orphan*/  list; int /*<<< orphan*/  flow_lock; } ;
struct caif_dev_common {int link_select; int /*<<< orphan*/  use_fcs; } ;
typedef  enum cfcnfg_phy_preference { ____Placeholder_cfcnfg_phy_preference } cfcnfg_phy_preference ;

/* Variables and functions */
#define  CAIF_LINK_HIGH_BANDW 129 
#define  CAIF_LINK_LOW_LATENCY 128 
 int CFPHYPREF_HIGH_BW ; 
 int CFPHYPREF_LOW_LAT ; 
 struct caif_device_entry* FUNC0 (struct net_device*) ; 
 struct caif_device_entry_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cfcnfg*,struct net_device*,struct cflayer*,int,struct cflayer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct cfcnfg* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  transmit ; 

void FUNC11(struct net_device *dev, struct caif_dev_common *caifdev,
		     struct cflayer *link_support, int head_room,
		     struct cflayer **layer,
		     int (**rcv_func)(struct sk_buff *, struct net_device *,
				      struct packet_type *,
				      struct net_device *))
{
	struct caif_device_entry *caifd;
	enum cfcnfg_phy_preference pref;
	struct cfcnfg *cfg = FUNC4(FUNC3(dev));
	struct caif_device_entry_list *caifdevs;

	caifdevs = FUNC1(FUNC3(dev));
	caifd = FUNC0(dev);
	if (!caifd)
		return;
	*layer = &caifd->layer;
	FUNC9(&caifd->flow_lock);

	switch (caifdev->link_select) {
	case CAIF_LINK_HIGH_BANDW:
		pref = CFPHYPREF_HIGH_BW;
		break;
	case CAIF_LINK_LOW_LATENCY:
		pref = CFPHYPREF_LOW_LAT;
		break;
	default:
		pref = CFPHYPREF_HIGH_BW;
		break;
	}
	FUNC6(&caifdevs->lock);
	FUNC5(&caifd->list, &caifdevs->list);

	FUNC10(caifd->layer.name, dev->name,
		sizeof(caifd->layer.name));
	caifd->layer.transmit = transmit;
	FUNC2(cfg,
				dev,
				&caifd->layer,
				pref,
				link_support,
				caifdev->use_fcs,
				head_room);
	FUNC7(&caifdevs->lock);
	if (rcv_func)
		*rcv_func = receive;
}