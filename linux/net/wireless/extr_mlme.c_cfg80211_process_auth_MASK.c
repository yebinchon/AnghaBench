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
struct wireless_dev {int /*<<< orphan*/  netdev; int /*<<< orphan*/  wiphy; } ;
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wireless_dev *wdev,
				  const u8 *buf, size_t len)
{
	struct cfg80211_registered_device *rdev = FUNC2(wdev->wiphy);

	FUNC1(rdev, wdev->netdev, buf, len, GFP_KERNEL);
	FUNC0(wdev, buf, len);
}