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
struct wpan_phy {int /*<<< orphan*/  cca_ed_level; } ;
struct ieee802154_local {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ieee802154_local*,int /*<<< orphan*/ ) ; 
 struct ieee802154_local* FUNC2 (struct wpan_phy*) ; 

__attribute__((used)) static int
FUNC3(struct wpan_phy *wpan_phy, s32 ed_level)
{
	struct ieee802154_local *local = FUNC2(wpan_phy);
	int ret;

	FUNC0();

	if (wpan_phy->cca_ed_level == ed_level)
		return 0;

	ret = FUNC1(local, ed_level);
	if (!ret)
		wpan_phy->cca_ed_level = ed_level;

	return ret;
}