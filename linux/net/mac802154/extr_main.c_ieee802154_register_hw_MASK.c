#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_12__ {int /*<<< orphan*/  function; } ;
struct ieee802154_local {int /*<<< orphan*/  workqueue; TYPE_3__* phy; TYPE_1__ hw; TYPE_8__ ifs_timer; } ;
struct ieee802154_hw {int flags; } ;
struct TYPE_10__ {int min_csma_backoffs; int max_csma_backoffs; int min_maxbe; int max_maxbe; int min_minbe; int max_minbe; int min_frame_retries; int max_frame_retries; int /*<<< orphan*/  iftypes; } ;
struct TYPE_11__ {TYPE_2__ supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int IEEE802154_HW_CSMA_PARAMS ; 
 int IEEE802154_HW_FRAME_RETRIES ; 
 int IEEE802154_HW_PROMISCUOUS ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  NET_NAME_ENUM ; 
 int /*<<< orphan*/  NL802154_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  NL802154_IFTYPE_NODE ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee802154_local* FUNC7 (struct ieee802154_hw*) ; 
 struct net_device* FUNC8 (struct ieee802154_local*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  ieee802154_xmit_ifs_timer ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

int FUNC16(struct ieee802154_hw *hw)
{
	struct ieee802154_local *local = FUNC7(hw);
	struct net_device *dev;
	int rc = -ENOSYS;

	local->workqueue =
		FUNC4(FUNC12(local->phy));
	if (!local->workqueue) {
		rc = -ENOMEM;
		goto out;
	}

	FUNC6(&local->ifs_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	local->ifs_timer.function = ieee802154_xmit_ifs_timer;

	FUNC14(local->phy, local->hw.parent);

	FUNC9(local->phy);

	if (!(hw->flags & IEEE802154_HW_CSMA_PARAMS)) {
		local->phy->supported.min_csma_backoffs = 4;
		local->phy->supported.max_csma_backoffs = 4;
		local->phy->supported.min_maxbe = 5;
		local->phy->supported.max_maxbe = 5;
		local->phy->supported.min_minbe = 3;
		local->phy->supported.max_minbe = 3;
	}

	if (!(hw->flags & IEEE802154_HW_FRAME_RETRIES)) {
		local->phy->supported.min_frame_retries = 3;
		local->phy->supported.max_frame_retries = 3;
	}

	if (hw->flags & IEEE802154_HW_PROMISCUOUS)
		local->phy->supported.iftypes |= FUNC0(NL802154_IFTYPE_MONITOR);

	rc = FUNC13(local->phy);
	if (rc < 0)
		goto out_wq;

	FUNC10();

	dev = FUNC8(local, "wpan%d", NET_NAME_ENUM,
				NL802154_IFTYPE_NODE,
				FUNC3(0x0000000000000000ULL));
	if (FUNC1(dev)) {
		FUNC11();
		rc = FUNC2(dev);
		goto out_phy;
	}

	FUNC11();

	return 0;

out_phy:
	FUNC15(local->phy);
out_wq:
	FUNC5(local->workqueue);
out:
	return rc;
}