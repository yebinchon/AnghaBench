#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u8 ;
struct wpan_phy {void* current_page; void* current_channel; } ;
struct ieee802154_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ieee802154_local*,void*,void*) ; 
 struct ieee802154_local* FUNC2 (struct wpan_phy*) ; 

__attribute__((used)) static int
FUNC3(struct wpan_phy *wpan_phy, u8 page, u8 channel)
{
	struct ieee802154_local *local = FUNC2(wpan_phy);
	int ret;

	FUNC0();

	if (wpan_phy->current_page == page &&
	    wpan_phy->current_channel == channel)
		return 0;

	ret = FUNC1(local, page, channel);
	if (!ret) {
		wpan_phy->current_page = page;
		wpan_phy->current_channel = channel;
	}

	return ret;
}