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
struct net_device {unsigned int flags; unsigned int gflags; scalar_t__ allmulti; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EOVERFLOW ; 
 unsigned int IFF_ALLMULTI ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int inc, bool notify)
{
	unsigned int old_flags = dev->flags, old_gflags = dev->gflags;

	FUNC0();

	dev->flags |= IFF_ALLMULTI;
	dev->allmulti += inc;
	if (dev->allmulti == 0) {
		/*
		 * Avoid overflow.
		 * If inc causes overflow, untouch allmulti and return error.
		 */
		if (inc < 0)
			dev->flags &= ~IFF_ALLMULTI;
		else {
			dev->allmulti -= inc;
			FUNC4("%s: allmulti touches roof, set allmulti failed. allmulti feature of device might be broken.\n",
				dev->name);
			return -EOVERFLOW;
		}
	}
	if (dev->flags ^ old_flags) {
		FUNC2(dev, IFF_ALLMULTI);
		FUNC3(dev);
		if (notify)
			FUNC1(dev, old_flags,
					   dev->gflags ^ old_gflags);
	}
	return 0;
}