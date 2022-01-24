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
struct nlattr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * channels; } ;
struct TYPE_4__ {TYPE_1__ supported; } ;
struct cfg802154_registered_device {TYPE_2__ wpan_phy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 unsigned long IEEE802154_MAX_PAGE ; 
 int /*<<< orphan*/  NL802154_ATTR_CHANNELS_SUPPORTED ; 
 int /*<<< orphan*/  NL802154_ATTR_SUPPORTED_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cfg802154_registered_device *rdev,
				struct sk_buff *msg)
{
	struct nlattr *nl_page;
	unsigned long page;

	nl_page = FUNC1(msg, NL802154_ATTR_CHANNELS_SUPPORTED);
	if (!nl_page)
		return -ENOBUFS;

	for (page = 0; page <= IEEE802154_MAX_PAGE; page++) {
		if (FUNC2(msg, NL802154_ATTR_SUPPORTED_CHANNEL,
				rdev->wpan_phy.supported.channels[page]))
			return -ENOBUFS;
	}
	FUNC0(msg, nl_page);

	return 0;
}