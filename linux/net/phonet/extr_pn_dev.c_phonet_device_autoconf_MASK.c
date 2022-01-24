#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_1__* netdev_ops; } ;
struct ifreq {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct if_phonet_req {TYPE_2__ ifr_phonet_autoconf; } ;
struct TYPE_3__ {int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  SIOCPNGAUTOCONF ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,struct ifreq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct if_phonet_req req;
	int ret;

	if (!dev->netdev_ops->ndo_do_ioctl)
		return -EOPNOTSUPP;

	ret = dev->netdev_ops->ndo_do_ioctl(dev, (struct ifreq *)&req,
						SIOCPNGAUTOCONF);
	if (ret < 0)
		return ret;

	FUNC0();
	ret = FUNC1(dev, req.ifr_phonet_autoconf.device);
	if (ret)
		return ret;
	FUNC2(RTM_NEWADDR, dev,
				req.ifr_phonet_autoconf.device);
	return 0;
}