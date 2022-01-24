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
struct net_device {int dummy; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_local; struct in_device* ifa_dev; } ;
struct in_device {int /*<<< orphan*/  arp_parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  RT_SCOPE_HOST ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*) ; 
 struct in_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_ifaddr*) ; 
 int FUNC5 (struct in_ifaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct in_ifaddr *ifa)
{
	struct in_device *in_dev = FUNC2(dev);

	FUNC0();

	if (!in_dev) {
		FUNC4(ifa);
		return -ENOBUFS;
	}
	FUNC6(in_dev);
	FUNC8(in_dev->arp_parms);
	if (ifa->ifa_dev != in_dev) {
		FUNC1(ifa->ifa_dev);
		FUNC3(in_dev);
		ifa->ifa_dev = in_dev;
	}
	if (FUNC7(ifa->ifa_local))
		ifa->ifa_scope = RT_SCOPE_HOST;
	return FUNC5(ifa);
}