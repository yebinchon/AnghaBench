#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct cfg802154_registered_device** user_ptr; } ;
struct TYPE_3__ {int cca_ed_levels_size; scalar_t__* cca_ed_levels; } ;
struct TYPE_4__ {int flags; TYPE_1__ supported; } ;
struct cfg802154_registered_device {TYPE_2__ wpan_phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t NL802154_ATTR_CCA_ED_LEVEL ; 
 int WPAN_PHY_FLAG_CCA_ED_LEVEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cfg802154_registered_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg802154_registered_device *rdev = info->user_ptr[0];
	s32 ed_level;
	int i;

	if (!(rdev->wpan_phy.flags & WPAN_PHY_FLAG_CCA_ED_LEVEL))
		return -EOPNOTSUPP;

	if (!info->attrs[NL802154_ATTR_CCA_ED_LEVEL])
		return -EINVAL;

	ed_level = FUNC0(info->attrs[NL802154_ATTR_CCA_ED_LEVEL]);

	for (i = 0; i < rdev->wpan_phy.supported.cca_ed_levels_size; i++) {
		if (ed_level == rdev->wpan_phy.supported.cca_ed_levels[i])
			return FUNC1(rdev, ed_level);
	}

	return -EINVAL;
}