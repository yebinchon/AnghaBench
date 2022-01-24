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
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/  const*,size_t) ; 

void FUNC6(struct net_device *dev, const u8 *buf, size_t len)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct ieee80211_mgmt *mgmt = (void *)buf;

	FUNC0(wdev);

	FUNC5(dev, buf, len);

	if (FUNC1(len < 2))
		return;

	if (FUNC4(mgmt->frame_control))
		FUNC2(wdev, buf, len);
	else
		FUNC3(wdev, buf, len);
}