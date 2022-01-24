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
struct wpan_phy_cca {int dummy; } ;
struct ieee802154_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_cca_mode ) (int /*<<< orphan*/ *,struct wpan_phy_cca const*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,struct wpan_phy_cca const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee802154_local*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee802154_local*,struct wpan_phy_cca const*) ; 

__attribute__((used)) static inline int FUNC5(struct ieee802154_local *local,
				   const struct wpan_phy_cca *cca)
{
	int ret;

	FUNC1();

	if (!local->ops->set_cca_mode) {
		FUNC0(1);
		return -EOPNOTSUPP;
	}

	FUNC4(local, cca);
	ret = local->ops->set_cca_mode(&local->hw, cca);
	FUNC3(local, ret);
	return ret;
}