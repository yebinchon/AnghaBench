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
struct wpan_phy_supported {int cca_ed_levels_size; int tx_powers_size; int /*<<< orphan*/  lbt; scalar_t__ iftypes; int /*<<< orphan*/  max_frame_retries; int /*<<< orphan*/  min_frame_retries; int /*<<< orphan*/  max_csma_backoffs; int /*<<< orphan*/  min_csma_backoffs; int /*<<< orphan*/  max_maxbe; int /*<<< orphan*/  min_maxbe; int /*<<< orphan*/  max_minbe; int /*<<< orphan*/  min_minbe; scalar_t__ cca_opts; scalar_t__ cca_modes; int /*<<< orphan*/ * tx_powers; int /*<<< orphan*/ * cca_ed_levels; scalar_t__* channels; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int flags; struct wpan_phy_supported supported; } ;
struct cfg802154_registered_device {TYPE_1__ wpan_phy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int IEEE802154_MAX_PAGE ; 
 int /*<<< orphan*/  NL802154_ATTR_WPAN_PHY_CAPS ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_CCA_ED_LEVELS ; 
 int NL802154_CAP_ATTR_CCA_MODES ; 
 int NL802154_CAP_ATTR_CCA_OPTS ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_CHANNELS ; 
 int NL802154_CAP_ATTR_IFTYPES ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_LBT ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_MAX_CSMA_BACKOFFS ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_MAX_FRAME_RETRIES ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_MAX_MAXBE ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_MAX_MINBE ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_MIN_CSMA_BACKOFFS ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_MIN_FRAME_RETRIES ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_MIN_MAXBE ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_MIN_MINBE ; 
 int /*<<< orphan*/  NL802154_CAP_ATTR_TX_POWERS ; 
 int WPAN_PHY_FLAG_CCA_ED_LEVEL ; 
 int WPAN_PHY_FLAG_CCA_MODE ; 
 int WPAN_PHY_FLAG_TXPOWER ; 
 scalar_t__ FUNC0 (struct sk_buff*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct sk_buff *msg,
			  struct cfg802154_registered_device *rdev)
{
	const struct wpan_phy_supported *caps = &rdev->wpan_phy.supported;
	struct nlattr *nl_caps, *nl_channels;
	int i;

	nl_caps = FUNC2(msg, NL802154_ATTR_WPAN_PHY_CAPS);
	if (!nl_caps)
		return -ENOBUFS;

	nl_channels = FUNC2(msg, NL802154_CAP_ATTR_CHANNELS);
	if (!nl_channels)
		return -ENOBUFS;

	for (i = 0; i <= IEEE802154_MAX_PAGE; i++) {
		if (caps->channels[i]) {
			if (FUNC0(msg, i, caps->channels[i]))
				return -ENOBUFS;
		}
	}

	FUNC1(msg, nl_channels);

	if (rdev->wpan_phy.flags & WPAN_PHY_FLAG_CCA_ED_LEVEL) {
		struct nlattr *nl_ed_lvls;

		nl_ed_lvls = FUNC2(msg,
						   NL802154_CAP_ATTR_CCA_ED_LEVELS);
		if (!nl_ed_lvls)
			return -ENOBUFS;

		for (i = 0; i < caps->cca_ed_levels_size; i++) {
			if (FUNC3(msg, i, caps->cca_ed_levels[i]))
				return -ENOBUFS;
		}

		FUNC1(msg, nl_ed_lvls);
	}

	if (rdev->wpan_phy.flags & WPAN_PHY_FLAG_TXPOWER) {
		struct nlattr *nl_tx_pwrs;

		nl_tx_pwrs = FUNC2(msg,
						   NL802154_CAP_ATTR_TX_POWERS);
		if (!nl_tx_pwrs)
			return -ENOBUFS;

		for (i = 0; i < caps->tx_powers_size; i++) {
			if (FUNC3(msg, i, caps->tx_powers[i]))
				return -ENOBUFS;
		}

		FUNC1(msg, nl_tx_pwrs);
	}

	if (rdev->wpan_phy.flags & WPAN_PHY_FLAG_CCA_MODE) {
		if (FUNC0(msg, NL802154_CAP_ATTR_CCA_MODES,
				       caps->cca_modes) ||
		    FUNC0(msg, NL802154_CAP_ATTR_CCA_OPTS,
				       caps->cca_opts))
			return -ENOBUFS;
	}

	if (FUNC6(msg, NL802154_CAP_ATTR_MIN_MINBE, caps->min_minbe) ||
	    FUNC6(msg, NL802154_CAP_ATTR_MAX_MINBE, caps->max_minbe) ||
	    FUNC6(msg, NL802154_CAP_ATTR_MIN_MAXBE, caps->min_maxbe) ||
	    FUNC6(msg, NL802154_CAP_ATTR_MAX_MAXBE, caps->max_maxbe) ||
	    FUNC6(msg, NL802154_CAP_ATTR_MIN_CSMA_BACKOFFS,
		       caps->min_csma_backoffs) ||
	    FUNC6(msg, NL802154_CAP_ATTR_MAX_CSMA_BACKOFFS,
		       caps->max_csma_backoffs) ||
	    FUNC4(msg, NL802154_CAP_ATTR_MIN_FRAME_RETRIES,
		       caps->min_frame_retries) ||
	    FUNC4(msg, NL802154_CAP_ATTR_MAX_FRAME_RETRIES,
		       caps->max_frame_retries) ||
	    FUNC0(msg, NL802154_CAP_ATTR_IFTYPES,
			       caps->iftypes) ||
	    FUNC5(msg, NL802154_CAP_ATTR_LBT, caps->lbt))
		return -ENOBUFS;

	FUNC1(msg, nl_caps);

	return 0;
}