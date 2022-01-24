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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int /*<<< orphan*/  num_tc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  S16_MAX ; 
 scalar_t__ FUNC0 (struct net_device*) ; 

int FUNC1(struct net_device *dev, u16 channel)
{
	/* Do not use a multiqueue device to represent a subordinate channel */
	if (FUNC0(dev))
		return -ENODEV;

	/* We allow channels 1 - 32767 to be used for subordinate channels.
	 * Channel 0 is meant to be "native" mode and used only to represent
	 * the main root device. We allow writing 0 to reset the device back
	 * to normal mode after being used as a subordinate channel.
	 */
	if (channel > S16_MAX)
		return -EINVAL;

	dev->num_tc = -channel;

	return 0;
}