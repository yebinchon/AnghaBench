#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wpan_dev {int /*<<< orphan*/  lbt; int /*<<< orphan*/  frame_retries; int /*<<< orphan*/  csma_retries; int /*<<< orphan*/  max_be; int /*<<< orphan*/  min_be; TYPE_1__* wpan_phy; } ;
struct net_device {int dummy; } ;
struct ieee802154_sub_if_data {struct wpan_dev wpan_dev; struct ieee802154_local* local; } ;
struct ieee802154_mac_params {int /*<<< orphan*/  cca_ed_level; int /*<<< orphan*/  cca; int /*<<< orphan*/  transmit_power; int /*<<< orphan*/  lbt; int /*<<< orphan*/  frame_retries; int /*<<< orphan*/  csma_retries; int /*<<< orphan*/  max_be; int /*<<< orphan*/  min_be; } ;
struct TYPE_6__ {TYPE_2__* phy; } ;
struct ieee802154_local {TYPE_3__ hw; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  cca_ed_level; int /*<<< orphan*/  cca; int /*<<< orphan*/  transmit_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct ieee802154_sub_if_data* FUNC1 (struct net_device*) ; 
 int WPAN_PHY_FLAG_CCA_ED_LEVEL ; 
 int WPAN_PHY_FLAG_CCA_MODE ; 
 int WPAN_PHY_FLAG_TXPOWER ; 
 int FUNC2 (struct ieee802154_local*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee802154_local*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ieee802154_local*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				    const struct ieee802154_mac_params *params)
{
	struct ieee802154_sub_if_data *sdata = FUNC1(dev);
	struct ieee802154_local *local = sdata->local;
	struct wpan_dev *wpan_dev = &sdata->wpan_dev;
	int ret;

	FUNC0();

	/* PHY */
	wpan_dev->wpan_phy->transmit_power = params->transmit_power;
	wpan_dev->wpan_phy->cca = params->cca;
	wpan_dev->wpan_phy->cca_ed_level = params->cca_ed_level;

	/* MAC */
	wpan_dev->min_be = params->min_be;
	wpan_dev->max_be = params->max_be;
	wpan_dev->csma_retries = params->csma_retries;
	wpan_dev->frame_retries = params->frame_retries;
	wpan_dev->lbt = params->lbt;

	if (local->hw.phy->flags & WPAN_PHY_FLAG_TXPOWER) {
		ret = FUNC4(local, params->transmit_power);
		if (ret < 0)
			return ret;
	}

	if (local->hw.phy->flags & WPAN_PHY_FLAG_CCA_MODE) {
		ret = FUNC3(local, &params->cca);
		if (ret < 0)
			return ret;
	}

	if (local->hw.phy->flags & WPAN_PHY_FLAG_CCA_ED_LEVEL) {
		ret = FUNC2(local, params->cca_ed_level);
		if (ret < 0)
			return ret;
	}

	return 0;
}