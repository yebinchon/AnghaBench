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
struct wpan_phy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee802154_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net_device* FUNC1 (struct ieee802154_local*,char const*,unsigned char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct ieee802154_local* FUNC4 (struct wpan_phy*) ; 

__attribute__((used)) static struct net_device *
FUNC5(struct wpan_phy *wpan_phy,
				const char *name,
				unsigned char name_assign_type, int type)
{
	struct ieee802154_local *local = FUNC4(wpan_phy);
	struct net_device *dev;

	FUNC2();
	dev = FUNC1(local, name, name_assign_type, type,
				FUNC0(0x0000000000000000ULL));
	FUNC3();

	return dev;
}