#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wireless_dev {TYPE_3__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_9__ {char* release; } ;
struct TYPE_8__ {char* fw_version; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {char* name; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 

void FUNC4(struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;

	FUNC2(info->driver, FUNC3(wdev->wiphy)->driver->name,
		sizeof(info->driver));

	FUNC2(info->version, FUNC1()->release, sizeof(info->version));

	if (wdev->wiphy->fw_version[0])
		FUNC2(info->fw_version, wdev->wiphy->fw_version,
			sizeof(info->fw_version));
	else
		FUNC2(info->fw_version, "N/A", sizeof(info->fw_version));

	FUNC2(info->bus_info, FUNC0(FUNC3(wdev->wiphy)),
		sizeof(info->bus_info));
}