#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {struct ieee80211_supported_band** bands; } ;
struct net_device {TYPE_3__* ieee80211_ptr; TYPE_1__ wiphy; } ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct mesh_setup {int dtim_period; int auto_open_plinks; int control_port_over_nl80211; int /*<<< orphan*/  userspace_handles_dfs; int /*<<< orphan*/  beacon_rate; TYPE_5__ chandef; int /*<<< orphan*/  basic_rates; scalar_t__ user_mpm; void* beacon_interval; int /*<<< orphan*/  mcast_rate; void* mesh_id_len; void* mesh_id; } ;
struct mesh_config {int dtim_period; int auto_open_plinks; int control_port_over_nl80211; int /*<<< orphan*/  userspace_handles_dfs; int /*<<< orphan*/  beacon_rate; TYPE_5__ chandef; int /*<<< orphan*/  basic_rates; scalar_t__ user_mpm; void* beacon_interval; int /*<<< orphan*/  mcast_rate; void* mesh_id_len; void* mesh_id; } ;
struct ieee80211_supported_band {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_portid; scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_3__* ieee80211_ptr; TYPE_1__ wiphy; } ;
typedef  int /*<<< orphan*/  setup ;
typedef  int /*<<< orphan*/  cfg ;
struct TYPE_8__ {int /*<<< orphan*/  conn_owner_nlportid; } ;
struct TYPE_7__ {size_t band; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NL80211_ATTR_BEACON_INTERVAL ; 
 size_t NL80211_ATTR_BSS_BASIC_RATES ; 
 size_t NL80211_ATTR_CONTROL_PORT_OVER_NL80211 ; 
 size_t NL80211_ATTR_DTIM_PERIOD ; 
 size_t NL80211_ATTR_HANDLE_DFS ; 
 size_t NL80211_ATTR_MCAST_RATE ; 
 size_t NL80211_ATTR_MESH_CONFIG ; 
 size_t NL80211_ATTR_MESH_ID ; 
 size_t NL80211_ATTR_MESH_SETUP ; 
 size_t NL80211_ATTR_SOCKET_OWNER ; 
 size_t NL80211_ATTR_TX_RATES ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int FUNC0 (struct net_device*,struct net_device*,struct mesh_setup*,struct mesh_setup*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  default_mesh_config ; 
 int /*<<< orphan*/  default_mesh_setup ; 
 int FUNC2 (struct ieee80211_supported_band*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mesh_setup*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct net_device*,struct genl_info*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (struct genl_info*,struct mesh_setup*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct genl_info*,struct mesh_setup*) ; 
 int FUNC8 (struct genl_info*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 void* FUNC11 (scalar_t__) ; 
 void* FUNC12 (scalar_t__) ; 
 int FUNC13 (struct net_device*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct net_device*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct mesh_config cfg;
	struct mesh_setup setup;
	int err;

	/* start with default */
	FUNC3(&cfg, &default_mesh_config, sizeof(cfg));
	FUNC3(&setup, &default_mesh_setup, sizeof(setup));

	if (info->attrs[NL80211_ATTR_MESH_CONFIG]) {
		/* and parse parameters if given */
		err = FUNC6(info, &cfg, NULL);
		if (err)
			return err;
	}

	if (!info->attrs[NL80211_ATTR_MESH_ID] ||
	    !FUNC12(info->attrs[NL80211_ATTR_MESH_ID]))
		return -EINVAL;

	setup.mesh_id = FUNC9(info->attrs[NL80211_ATTR_MESH_ID]);
	setup.mesh_id_len = FUNC12(info->attrs[NL80211_ATTR_MESH_ID]);

	if (info->attrs[NL80211_ATTR_MCAST_RATE] &&
	    !FUNC5(rdev, setup.mcast_rate,
			    FUNC11(info->attrs[NL80211_ATTR_MCAST_RATE])))
			return -EINVAL;

	if (info->attrs[NL80211_ATTR_BEACON_INTERVAL]) {
		setup.beacon_interval =
			FUNC11(info->attrs[NL80211_ATTR_BEACON_INTERVAL]);

		err = FUNC1(rdev,
						   NL80211_IFTYPE_MESH_POINT,
						   setup.beacon_interval);
		if (err)
			return err;
	}

	if (info->attrs[NL80211_ATTR_DTIM_PERIOD]) {
		setup.dtim_period =
			FUNC11(info->attrs[NL80211_ATTR_DTIM_PERIOD]);
		if (setup.dtim_period < 1 || setup.dtim_period > 100)
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_MESH_SETUP]) {
		/* parse additional setup parameters if given */
		err = FUNC7(info, &setup);
		if (err)
			return err;
	}

	if (setup.user_mpm)
		cfg.auto_open_plinks = false;

	if (info->attrs[NL80211_ATTR_WIPHY_FREQ]) {
		err = FUNC4(rdev, info, &setup.chandef);
		if (err)
			return err;
	} else {
		/* __cfg80211_join_mesh() will sort it out */
		setup.chandef.chan = NULL;
	}

	if (info->attrs[NL80211_ATTR_BSS_BASIC_RATES]) {
		u8 *rates = FUNC9(info->attrs[NL80211_ATTR_BSS_BASIC_RATES]);
		int n_rates =
			FUNC12(info->attrs[NL80211_ATTR_BSS_BASIC_RATES]);
		struct ieee80211_supported_band *sband;

		if (!setup.chandef.chan)
			return -EINVAL;

		sband = rdev->wiphy.bands[setup.chandef.chan->band];

		err = FUNC2(sband, rates, n_rates,
					     &setup.basic_rates);
		if (err)
			return err;
	}

	if (info->attrs[NL80211_ATTR_TX_RATES]) {
		err = FUNC8(info, &setup.beacon_rate);
		if (err)
			return err;

		if (!setup.chandef.chan)
			return -EINVAL;

		err = FUNC13(rdev, setup.chandef.chan->band,
					      &setup.beacon_rate);
		if (err)
			return err;
	}

	setup.userspace_handles_dfs =
		FUNC10(info->attrs[NL80211_ATTR_HANDLE_DFS]);

	if (info->attrs[NL80211_ATTR_CONTROL_PORT_OVER_NL80211]) {
		int r = FUNC14(rdev, info);

		if (r < 0)
			return r;

		setup.control_port_over_nl80211 = true;
	}

	FUNC15(dev->ieee80211_ptr);
	err = FUNC0(rdev, dev, &setup, &cfg);
	if (!err && info->attrs[NL80211_ATTR_SOCKET_OWNER])
		dev->ieee80211_ptr->conn_owner_nlportid = info->snd_portid;
	FUNC16(dev->ieee80211_ptr);

	return err;
}