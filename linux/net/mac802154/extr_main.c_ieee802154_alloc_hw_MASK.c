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
struct TYPE_2__ {int max_minbe; int min_maxbe; int max_maxbe; int max_frame_retries; int max_csma_backoffs; int /*<<< orphan*/  iftypes; int /*<<< orphan*/  lbt; scalar_t__ min_frame_retries; } ;
struct wpan_phy {TYPE_1__ supported; int /*<<< orphan*/  privid; } ;
struct ieee802154_ops {int /*<<< orphan*/  set_channel; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  ed; scalar_t__ xmit_sync; scalar_t__ xmit_async; } ;
struct ieee802154_hw {char* priv; struct wpan_phy* phy; } ;
struct ieee802154_local {struct ieee802154_hw hw; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  skb_queue; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  iflist_mtx; int /*<<< orphan*/  interfaces; struct ieee802154_ops const* ops; struct wpan_phy* phy; } ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_ALIGN ; 
 int /*<<< orphan*/  NL802154_IFTYPE_NODE ; 
 int /*<<< orphan*/  NL802154_SUPPORTED_BOOL_FALSE ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  ieee802154_tasklet_handler ; 
 int /*<<< orphan*/  ieee802154_xmit_worker ; 
 int /*<<< orphan*/  mac802154_config_ops ; 
 int /*<<< orphan*/  mac802154_wpan_phy_privid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 struct wpan_phy* FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 struct ieee802154_local* FUNC10 (struct wpan_phy*) ; 

struct ieee802154_hw *
FUNC11(size_t priv_data_len, const struct ieee802154_ops *ops)
{
	struct wpan_phy *phy;
	struct ieee802154_local *local;
	size_t priv_size;

	if (FUNC4(!ops || !(ops->xmit_async || ops->xmit_sync) || !ops->ed ||
		    !ops->start || !ops->stop || !ops->set_channel))
		return NULL;

	/* Ensure 32-byte alignment of our private data and hw private data.
	 * We use the wpan_phy priv data for both our ieee802154_local and for
	 * the driver's private data
	 *
	 * in memory it'll be like this:
	 *
	 * +-------------------------+
	 * | struct wpan_phy         |
	 * +-------------------------+
	 * | struct ieee802154_local |
	 * +-------------------------+
	 * | driver's private data   |
	 * +-------------------------+
	 *
	 * Due to ieee802154 layer isn't aware of driver and MAC structures,
	 * so lets align them here.
	 */

	priv_size = FUNC0(sizeof(*local), NETDEV_ALIGN) + priv_data_len;

	phy = FUNC9(&mac802154_config_ops, priv_size);
	if (!phy) {
		FUNC6("failure to allocate master IEEE802.15.4 device\n");
		return NULL;
	}

	phy->privid = mac802154_wpan_phy_privid;

	local = FUNC10(phy);
	local->phy = phy;
	local->hw.phy = local->phy;
	local->hw.priv = (char *)local + FUNC0(sizeof(*local), NETDEV_ALIGN);
	local->ops = ops;

	FUNC2(&local->interfaces);
	FUNC5(&local->iflist_mtx);

	FUNC8(&local->tasklet,
		     ieee802154_tasklet_handler,
		     (unsigned long)local);

	FUNC7(&local->skb_queue);

	FUNC3(&local->tx_work, ieee802154_xmit_worker);

	/* init supported flags with 802.15.4 default ranges */
	phy->supported.max_minbe = 8;
	phy->supported.min_maxbe = 3;
	phy->supported.max_maxbe = 8;
	phy->supported.min_frame_retries = 0;
	phy->supported.max_frame_retries = 7;
	phy->supported.max_csma_backoffs = 5;
	phy->supported.lbt = NL802154_SUPPORTED_BOOL_FALSE;

	/* always supported */
	phy->supported.iftypes = FUNC1(NL802154_IFTYPE_NODE);

	return &local->hw;
}