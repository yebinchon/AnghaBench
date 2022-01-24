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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  tmp ;
struct wpan_dev {int iftype; int min_be; int max_be; int csma_retries; int frame_retries; int promiscuous_mode; int /*<<< orphan*/ * header_ops; int /*<<< orphan*/  extended_addr; void* short_addr; void* pan_id; int /*<<< orphan*/  dsn; int /*<<< orphan*/  bsn; } ;
struct ieee802154_sub_if_data {TYPE_1__* dev; int /*<<< orphan*/  sec; int /*<<< orphan*/  sec_mtx; struct wpan_dev wpan_dev; } ;
typedef  enum nl802154_iftype { ____Placeholder_nl802154_iftype } nl802154_iftype ;
struct TYPE_2__ {int needs_free_netdev; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/ * ml_priv; int /*<<< orphan*/  priv_destructor; int /*<<< orphan*/ * header_ops; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IEEE802154_ADDR_BROADCAST ; 
 int /*<<< orphan*/  IEEE802154_PANID_BROADCAST ; 
#define  NL802154_IFTYPE_MONITOR 129 
#define  NL802154_IFTYPE_NODE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieee802154_header_ops ; 
 int /*<<< orphan*/  mac802154_header_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mac802154_mlme_wpan ; 
 int /*<<< orphan*/  mac802154_monitor_ops ; 
 int /*<<< orphan*/  mac802154_wpan_free ; 
 int /*<<< orphan*/  mac802154_wpan_ops ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct ieee802154_sub_if_data *sdata,
		       enum nl802154_iftype type)
{
	struct wpan_dev *wpan_dev = &sdata->wpan_dev;
	int ret;
	u8 tmp;

	/* set some type-dependent values */
	sdata->wpan_dev.iftype = type;

	FUNC3(&tmp, sizeof(tmp));
	FUNC1(&wpan_dev->bsn, tmp);
	FUNC3(&tmp, sizeof(tmp));
	FUNC1(&wpan_dev->dsn, tmp);

	/* defaults per 802.15.4-2011 */
	wpan_dev->min_be = 3;
	wpan_dev->max_be = 5;
	wpan_dev->csma_retries = 4;
	wpan_dev->frame_retries = 3;

	wpan_dev->pan_id = FUNC2(IEEE802154_PANID_BROADCAST);
	wpan_dev->short_addr = FUNC2(IEEE802154_ADDR_BROADCAST);

	switch (type) {
	case NL802154_IFTYPE_NODE:
		FUNC4(&wpan_dev->extended_addr,
					sdata->dev->dev_addr);

		sdata->dev->header_ops = &mac802154_header_ops;
		sdata->dev->needs_free_netdev = true;
		sdata->dev->priv_destructor = mac802154_wpan_free;
		sdata->dev->netdev_ops = &mac802154_wpan_ops;
		sdata->dev->ml_priv = &mac802154_mlme_wpan;
		wpan_dev->promiscuous_mode = false;
		wpan_dev->header_ops = &ieee802154_header_ops;

		FUNC7(&sdata->sec_mtx);

		FUNC5(&sdata->sec);
		ret = FUNC6(sdata->dev);
		if (ret < 0)
			return ret;

		break;
	case NL802154_IFTYPE_MONITOR:
		sdata->dev->needs_free_netdev = true;
		sdata->dev->netdev_ops = &mac802154_monitor_ops;
		wpan_dev->promiscuous_mode = true;
		break;
	default:
		FUNC0();
	}

	return 0;
}