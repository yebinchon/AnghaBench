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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void* extended_addr; int /*<<< orphan*/  mode; void* short_addr; void* pan_id; } ;
struct ieee802154_llsec_key_id {int mode; void* extended_source; int /*<<< orphan*/  short_source; void* id; TYPE_1__ device_addr; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IEEE802154_ADDR_LONG ; 
 int /*<<< orphan*/  IEEE802154_ADDR_SHORT ; 
 size_t IEEE802154_ATTR_HW_ADDR ; 
 size_t IEEE802154_ATTR_LLSEC_KEY_ID ; 
 size_t IEEE802154_ATTR_LLSEC_KEY_MODE ; 
 size_t IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED ; 
 size_t IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT ; 
 size_t IEEE802154_ATTR_PAN_ID ; 
 size_t IEEE802154_ATTR_SHORT_ADDR ; 
#define  IEEE802154_SCF_KEY_HW_INDEX 129 
 int IEEE802154_SCF_KEY_IMPLICIT ; 
#define  IEEE802154_SCF_KEY_SHORT_INDEX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802154_llsec_key_id*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct genl_info *info,
			      struct ieee802154_llsec_key_id *desc)
{
	FUNC1(desc, 0, sizeof(*desc));

	if (!info->attrs[IEEE802154_ATTR_LLSEC_KEY_MODE])
		return -EINVAL;

	desc->mode = FUNC5(info->attrs[IEEE802154_ATTR_LLSEC_KEY_MODE]);

	if (desc->mode == IEEE802154_SCF_KEY_IMPLICIT) {
		if (!info->attrs[IEEE802154_ATTR_PAN_ID] &&
		    !(info->attrs[IEEE802154_ATTR_SHORT_ADDR] ||
		      info->attrs[IEEE802154_ATTR_HW_ADDR]))
			return -EINVAL;

		desc->device_addr.pan_id = FUNC3(info->attrs[IEEE802154_ATTR_PAN_ID]);

		if (info->attrs[IEEE802154_ATTR_SHORT_ADDR]) {
			desc->device_addr.mode = IEEE802154_ADDR_SHORT;
			desc->device_addr.short_addr = FUNC3(info->attrs[IEEE802154_ATTR_SHORT_ADDR]);
		} else {
			desc->device_addr.mode = IEEE802154_ADDR_LONG;
			desc->device_addr.extended_addr = FUNC2(info->attrs[IEEE802154_ATTR_HW_ADDR]);
		}
	}

	if (desc->mode != IEEE802154_SCF_KEY_IMPLICIT &&
	    !info->attrs[IEEE802154_ATTR_LLSEC_KEY_ID])
		return -EINVAL;

	if (desc->mode == IEEE802154_SCF_KEY_SHORT_INDEX &&
	    !info->attrs[IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT])
		return -EINVAL;

	if (desc->mode == IEEE802154_SCF_KEY_HW_INDEX &&
	    !info->attrs[IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED])
		return -EINVAL;

	if (desc->mode != IEEE802154_SCF_KEY_IMPLICIT)
		desc->id = FUNC5(info->attrs[IEEE802154_ATTR_LLSEC_KEY_ID]);

	switch (desc->mode) {
	case IEEE802154_SCF_KEY_SHORT_INDEX:
	{
		u32 source = FUNC4(info->attrs[IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT]);

		desc->short_source = FUNC0(source);
		break;
	}
	case IEEE802154_SCF_KEY_HW_INDEX:
		desc->extended_source = FUNC2(info->attrs[IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED]);
		break;
	}

	return 0;
}