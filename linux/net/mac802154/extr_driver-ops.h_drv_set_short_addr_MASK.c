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
struct ieee802154_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct ieee802154_hw_addr_filt {int /*<<< orphan*/  short_addr; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int (* set_hw_addr_filt ) (int /*<<< orphan*/ *,struct ieee802154_hw_addr_filt*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IEEE802154_AFILT_SADDR_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ieee802154_hw_addr_filt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee802154_local*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee802154_local*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC5(struct ieee802154_local *local, __le16 short_addr)
{
	struct ieee802154_hw_addr_filt filt;
	int ret;

	FUNC1();

	if (!local->ops->set_hw_addr_filt) {
		FUNC0(1);
		return -EOPNOTSUPP;
	}

	filt.short_addr = short_addr;

	FUNC4(local, short_addr);
	ret = local->ops->set_hw_addr_filt(&local->hw, &filt,
					    IEEE802154_AFILT_SADDR_CHANGED);
	FUNC3(local, ret);
	return ret;
}