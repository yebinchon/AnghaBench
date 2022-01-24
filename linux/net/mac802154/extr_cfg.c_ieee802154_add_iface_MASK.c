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
typedef  enum nl802154_iftype { ____Placeholder_nl802154_iftype } nl802154_iftype ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct ieee802154_local*,char const*,unsigned char,int,int /*<<< orphan*/ ) ; 
 struct ieee802154_local* FUNC2 (struct wpan_phy*) ; 

__attribute__((used)) static int
FUNC3(struct wpan_phy *phy, const char *name,
		     unsigned char name_assign_type,
		     enum nl802154_iftype type, __le64 extended_addr)
{
	struct ieee802154_local *local = FUNC2(phy);
	struct net_device *err;

	err = FUNC1(local, name, name_assign_type, type,
				extended_addr);
	return FUNC0(err);
}